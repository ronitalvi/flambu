class CreateItemsReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :items_reviews do |t|
      t.references :user, foreign_key: true
      t.references :review, foreign_key: true

      t.timestamps
    end
  end
end
