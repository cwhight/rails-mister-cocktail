class AddReviewScoreToCocktail < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :review_score, :integer
  end
end
