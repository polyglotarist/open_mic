class CreateChords < ActiveRecord::Migration[5.2]
  def change
    create_table :chords do |t|
      t.integer :note
      t.integer :row
      t.integer :location
      t.integer :song_id

      t.timestamps
    end
  end
end
