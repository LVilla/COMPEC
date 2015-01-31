class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :nombre
      t.string :apellido
      t.string :lugar_nacimiento
      t.date :fecha_nacimiento

      t.timestamps null: false
    end
  end
end
