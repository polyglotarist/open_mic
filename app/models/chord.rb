class Chord < ApplicationRecord
  belongs_to :song

   enum note: {
                  A: 0,
                  Am: 1,
                  A7: 
                  B: 2,
                  Bm: 3,
                  "C#m" => 4,
                  Cm: 5,
                  D: 6, 
                  Dm: 7,
                  E: 8, 
                  Em: 9,
                  F: 10, 
                  Fm: 11,
                  G: 12,
                  Gm: 13
                }
  # def formatted_chords
    
  # end
  # enum note: 
end
