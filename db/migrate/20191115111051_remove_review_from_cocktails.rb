class RemoveReviewFromCocktails < ActiveRecord::Migration[5.2]
  def change
    remove_column :cocktails, :review, :string
    remove_column :cocktails, :review_score, :string
  end
end
