class ChangeDataTypeOfNote < ActiveRecord::Migration[5.2]
  def change
    change_column :chords, :note, :string
  end
end
