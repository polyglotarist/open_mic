class AddChordsListToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :chords_list, :string
  end
end
