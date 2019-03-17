class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.references :item, foreign_key: true
      t.string :photo_url
      t.timestamps
    end
  end
end
