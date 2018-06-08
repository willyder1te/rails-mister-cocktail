class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates_presence_of :description, :cocktail, :ingredient
  validates_uniqueness_of :cocktail, scope: :ingredient
end
