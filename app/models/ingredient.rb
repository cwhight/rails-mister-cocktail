class Ingredient < ApplicationRecord
  # include PgSearch::Model

  validates :name, presence: true, uniqueness: true
  has_many :doses
  has_many :ingredients, through: :doses

  # multisearchable against: :name
end
