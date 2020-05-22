class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses

  def self.ingredients_array
    ["lemon", "ice", "mint leaves", "vodka", "tequila", "rhum", "orange juice", "tomato juice"]
  end

  validates :name, uniqueness: true, presence: true
end
