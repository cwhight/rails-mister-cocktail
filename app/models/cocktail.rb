class Cocktail < ApplicationRecord
  # include PgSearch::Model

  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews

  # multisearchable against: :name
end
