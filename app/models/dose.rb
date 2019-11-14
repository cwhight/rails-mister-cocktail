class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }, presence: true
  validates :ingredient, presence: true
  belongs_to :cocktail
  belongs_to :ingredient
end
