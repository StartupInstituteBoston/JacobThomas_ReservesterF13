 class Restaurant < ActiveRecord::Base
  
  belongs_to :user 
  has_many :reservations, dependent: :destroy
  accepts_nested_attributes_for :reservations, :reject_if => lambda { |a| a[:content].blank? }
  has_and_belongs_to_many :categories 
  accepts_nested_attributes_for :categories 

  validates :name, presence: true
  validates :owner, presence: true
  validates :description, presence: true,
              uniqueness: true,
              length: { minimum: 5 }

  mount_uploader :photo, PhotoUploader
  mount_uploader :menu, MenuUploader

  geocoded_by :address
  after_validation :geocode 


  def category_tokens(ids)
    self.category_ids = ids.split(",")
  end

end
