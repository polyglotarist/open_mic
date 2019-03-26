json.id song.id
json.title song.title
json.lyrics song.lyrics
json.chords_list song.chords_list
json.chords song.chords

json.artist_id song.artist_id
json.category_id song.category_id

json.artist do
  json.partial! song.artist, partial: "api/artists/artist", as: :artist
end

json.category do
  json.partial! song.category, partial: "api/categories/category", as: :category
end

json.formatted do 
  json.lyrics song.formatted_lyrics
end
  