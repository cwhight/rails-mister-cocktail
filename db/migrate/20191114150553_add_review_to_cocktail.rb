class AddReviewToCocktail < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :review, :text
  end
end
