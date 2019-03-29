class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.references :item, foreign_key: true
      t.text :title
      t.boolean :is_available
      t.float :sale_price
      t.float :price_per_time
      t.references :time_unit, foreign_key: true
      t.references :listing_type, foreign_key: true
      t.float :auction_begin_price

      t.timestamps
    end
  end
end
