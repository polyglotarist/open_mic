class Song < ApplicationRecord
  belongs_to :category
  belongs_to :artist
  has_many :chords

  validates :title, presence: true
  validates :lyrics, presence: true

  def formatted_lyrics
    if lyrics
      self.lyrics.split(':')
    end
  end
end
