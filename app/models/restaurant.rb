class Restaurant < ActiveRecord::Base

  validates :name, presence: true

  validates :description, presence: true,
              length: { minimum: 5 }

  mount_uploader :photo, PhotoUploader

  mount_uploader :menu, MenuUploader

  geocoded_by :address
  after_validation :geocode 
end
