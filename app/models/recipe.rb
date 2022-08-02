class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy

  validates :name, presence: true, length: { maximum: 25 }
  validates :description, presence: true, length: { maximum: 500 }

  def total_price
    recipe_foods.includes([:food]).inject(0) { |sum, recipe_food| sum + recipe_food.food.price }
  end
end
