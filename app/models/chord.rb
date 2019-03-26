class Chord < ApplicationRecord
  belongs_to :song

  validates :note, presence: true
  validates :row, presence: true
  validates :row, numericality: true
  validates :location, presence: true
  validates :location, numericality: true

end
