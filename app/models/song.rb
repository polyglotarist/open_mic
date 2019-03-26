class Song < ApplicationRecord
  belongs_to :category
  belongs_to :artist
  has_many :chords 

  validates :title, presence: true
  validates :lyrics, presence: true 
  validates :chords_list, presence: true 


  def formatted_lyrics
    split_lyrics = lyrics.split("\n")
    longest_line = split_lyrics[0]
    split_lyrics.each do |line|
      if line.length > longest_line.length
        longest_line = line
      end
    end
    
    split_lyrics_length = split_lyrics.length
    chord_strings = []
    split_lyrics_length.times do 
      chord_strings << (" " * longest_line.length)
    end

    chords.each do |chord|
      chord_strings[chord.row].insert(chord.location, chord.note)
    end

    chord_strings.zip(split_lyrics)
    # split_lyrics
  end
end
