class Composer < ActiveRecord::Base
	has_many :albums
	has_many :songs
	validates :nombre, :apellido, presence: true, length: { minimum: 5, maximum: 22}
end
