class Owner < ActiveRecord::Base
  
  has_many :restaurants, dependent: :destroy
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: :true, length: { minimum: 5 }
  validates :email, presence: :true
  
end
