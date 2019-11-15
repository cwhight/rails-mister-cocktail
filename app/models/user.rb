class User < ApplicationRecord
  has_many :saved_items
  has_many :cocktails, through: :saved_items
end
