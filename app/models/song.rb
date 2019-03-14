class Song < ApplicationRecord
  belongs_to :category
  belongs_to :artist
  has_many :chords

  validates :title, presence: true
  validates :lyrics, presence: true

  def formatted_lyrics
     lyrics.split(':')
  end

  def formatted_chords
    chords.each do |chord|
      puts chord.note
    end
  end
end

# input
# chords association method
# [#<Chord id: 1, note: "A", row: 0, location: 0, song_id: 1, created_at: "2019-03-14 19:35:46", updated_at: "2019-03-14 19:35:46">, #<Chord id: 2, note: "A", row: 0, location: 15, song_id: 1, created_at: "2019-03-14 19:35:46", updated_at: "2019-03-14 19:35:46">, #<Chord id: 3, note: "A", row: 2, location: 15, song_id: 1, created_at: "2019-03-14 19:35:46", updated_at: "2019-03-14 19:35:46">, #<Chord id: 4, note: "A", row: 3, location: 0, song_id: 1, created_at: "2019-03-14 19:35:46", updated_at: "2019-03-14 19:35:46">, #<Chord id: 5, note: "A", row: 4, location: 0, song_id: 1, created_at: "2019-03-14 19:35:46", updated_at: "2019-03-14 19:35:46">, #<Chord id: 6, note: "A", row: 4, location: 15, song_id: 1, created_at: "2019-03-14 19:35:46", updated_at: "2019-03-14 19:35:46">, #<Chord id: 7, note: "A", row: 5, location: 0, song_id: 1, created_at: "2019-03-14 19:35:46", updated_at: "2019-03-14 19:35:46">, #<Chord id: 9, note: "Am", row: 0, location: 0, song_id: 1, created_at: "2019-03-14 19:35:46", updated_at: "2019-03-14 19:35:46">]

# output
# [
#   "A        A       ",
#   "G                ",
#   "      D          ",
#   "A        G       ",
#   "D                ",
#   "A                "
# ]
