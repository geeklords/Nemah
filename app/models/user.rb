class User < ApplicationRecord
  has_many :posts
  has_many :reservation
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true 
  validates :name, length: { minimum: 2,
   too_short: "Must have at least %{count} characters " }
   

end
