class User < ActiveRecord::Base
  
  has_many :restaurants, dependent: :destroy
  has_many :stars
  has_many :starred_restaurants, through: :stars, source: :restaurant
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: :true, length: { minimum: 5 }
  validates :email, presence: :true
  
end
