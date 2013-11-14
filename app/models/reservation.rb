class Reservation < ActiveRecord::Base
  
  belongs_to :restaurant

  validates :email, presence: :true 
  validates :datetime, presence: :true
  validates :message, presence: :true

end
