class Restaurant < ActiveRecord::Base
  validates :name, presence: true

  validates :description, presence: true,
              length: { minimum: 5 }

  mount_uploader :photo, PhotoUploader
end
