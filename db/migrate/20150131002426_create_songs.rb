class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :titulo
      t.references :album, index: true
      t.references :artist, index: true
      t.references :composer, index: true
      t.references :genre, index: true
      t.integer :año

      t.timestamps null: false
    end
    add_foreign_key :songs, :albums
    add_foreign_key :songs, :artists
    add_foreign_key :songs, :composers
    add_foreign_key :songs, :genres
  end
end
