class Artist < ActiveRecord::Base
	has_many :albums
	has_many :songs
	has_many :video
	validates :nombre, :apellido, :lugar_nacimiento, :fecha_nacimiento, presence: {message:"No dejar espacios en blanco"}
	validates :nombre, :apellido, presence: true, length: { minimum: 5, maximum: 22, message:"Debe tener entre 5 y 22 caracteres"}
	validates :fecha_nacimiento, numericality: { only_integer: true, message:"No es un numero entero" }
end
