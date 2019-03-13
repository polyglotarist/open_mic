class Song < ApplicationRecord
  belongs_to :category
  belongs_to :artist
  has_many :songs
end
