class Song < ActiveRecord::Base
  belongs_to :album
  belongs_to :artist
  belongs_to :composer
  belongs_to :genre
end
