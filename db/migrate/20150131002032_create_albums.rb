class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :album
      t.references :artist, index: true
      t.references :composer, index: true
      t.references :genre, index: true
      t.integer :año

      t.timestamps null: false
    end
    add_foreign_key :albums, :artists
    add_foreign_key :albums, :composers
    add_foreign_key :albums, :genres
  end
end
