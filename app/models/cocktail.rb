class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader

  def all_ingredients
    ingredient_names = []
    self.ingredients.each { |ingredient| ingredient_names << ingredient.name }
    return ingredient_names.join(" ")
  end
end
