class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :composer
  belongs_to :genre
end
