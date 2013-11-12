class Restaurant < ActiveRecord::Base
  
  belongs_to :owner 
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :owner, presence: true
  validates :description, presence: true,
              uniqueness: true,
              length: { minimum: 5 }

  mount_uploader :photo, PhotoUploader
  mount_uploader :menu, MenuUploader

  geocoded_by :address
  after_validation :geocode 

end
