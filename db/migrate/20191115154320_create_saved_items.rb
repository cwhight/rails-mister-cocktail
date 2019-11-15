class CreateSavedItems < ActiveRecord::Migration[5.2]
  def change
    create_table :saved_items do |t|
      t.references :cocktail, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
