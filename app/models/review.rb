class Review < ApplicationRecord
  belongs_to :cocktail
  validates :content, presence: true
  validates :score, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end