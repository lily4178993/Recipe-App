class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :foods
  has_many :recipes
  has_many :recipe_foods, through: :recipes

  validates :name, presence: true
end
