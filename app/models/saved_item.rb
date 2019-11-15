class SavedItem < ApplicationRecord
  belongs_to :cocktail
  belongs_to :user
end
