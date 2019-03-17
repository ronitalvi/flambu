class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.integer :stars
      t.text :comment
      t.datetime :date

      t.timestamps
    end
  end
end
