class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :titulo
      t.references :artist, index: true
      t.references :genre, index: true
      t.integer :año

      t.timestamps null: false
    end
    add_foreign_key :videos, :artists
    add_foreign_key :videos, :genres
  end
end
