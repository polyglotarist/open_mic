Artist.create!([
  {name: "Neil Young"},
  {name: "B.B. King"},
  {name: "Alberto Cortez"},
  {name: "Nat King Cole"}
])
Category.create!([
  {name: "Folk Rock"},
  {name: "Blues"},
  {name: "Flamenco"},
  {name: "Gypsy Jazz"}
])
Song.create!([
  {title: "The Thrill is Gone", lyrics: "The thrill is gone : The thrill is gone away : The thrill is gone baby : The thrill is gone away : You know you done me wrong baby : And you'll be sorry someday : The thrill is gone : It's gone away from me : The thrill is gone baby : The thrill is gone away from me : Although, I'll still live on : But so lonely I'll be : The thrill is gone : It's gone away for good : The thrill is gone baby : It's gone away for good : Someday I know I'll be open armed baby : Just like I know a good man should : You know I'm free, free now baby : I'm free from your spell:Oh I'm free, free, free now :I'm free from your spell : And now that it's all over : All I can do is wish you well", artist_id: 2, category_id: 2},
  {title: "Cuando Un Amigo Se Va", lyrics: "Cuando un amigo se va : Queda un espacio vaco : Que no lo puede llenar : La llegada de otro amigo : Cuando un amigo se va : Queda un tizn encendido : Que no se puede apagar : Ni con las aguas de un ro : Cuando un amigo se va : Una estrella se ha perdido : La que ilumina el lugar : Donde hay un nio dormido : Cuando un amigo se va : Se detienen los caminos : Y se empieza a revelar : El duende manso del vino : Cuando un amigo se va : Galopando su destino : Empieza el alma a vibrar : Porque se llena de fro : Cuando un amigo se va : Queda un terreno baldo : Que quiere el tiempo llenar : Con las piedras del hasto : Cuando un amigo se va : Se queda un rbol cado : Que ya no vuelve a brotar : Porque el viento lo ha vencido : Cuando un amigo se va : Queda un espacio vaco: Que no lo puede llenar : La llegada de otro amigo", artist_id: 3, category_id: 3},
  {title: "I Found a New Baby", lyrics: "I found a new baby : I found a new girl : My fashion plate baby : Has got me whirled : Her new kind of lovin' : Done made me her slave : Her sweet turtle dovin' : It's all that I crave : Sweetest miss : With a kiss full of bliss : Can't resist her somehow : Tells me lies but she's wise : Naughty eyes mesmerize : I vow and how : I don't mean maybe : I just had a fall : I found a new baby : Brand new baby, that's all : Sweetest miss : With a kiss full of bliss : Can't resist her somehow : Tells me lies but she's wise : Naughty eyes mesmerize : I vow and how : I don't mean maybe : I just had a fall : Found a new baby : Brand new baby, that's al", artist_id: 4, category_id: 4},
  {title: "Cinnamon Girl", lyrics: "I wanna live with a cinnamon girl : I could be happy the rest of my life : With a cinnamon girl : A dreamer of pictures, I run in the night : You see us together, chasing the moonlight : My cinnamon girl : Ten silver saxes, a bass with a bow : The drummer relaxes and waits between shows : For his cinnamon girl : A dreamer of pictures, I run in the night : You see us together, chasing the moonlight : My cinnamon girl : Pa sent me money now : I'm going to make it somehow : I need another chance : You see your baby loves to dance : Yeah, yeah, yeah", artist_id: 1, category_id: 1}
])
Chord.create!([
  {note: "A", row: 1, location: 0, song_id: 1},
  {note: "A", row: 2, location: 0, song_id: 1},
  {note: "A", row: 2, location: 15, song_id: 1},
  {note: "A", row: 3, location: 0, song_id: 1},
  {note: "A", row: 4, location: 0, song_id: 1},
  {note: "A", row: 4, location: 15, song_id: 1},
  {note: "A", row: 5, location: 0, song_id: 1},
  {note: "A7", row: 3, location: 5, song_id: 2},
  {note: "Am", row: 0, location: 0, song_id: 1}
])

User.create!([
  {name: "majid", email: "majid@gmail.com", password_digest: "$2a$10$jAJhZYH9apDfcZx4ATGun.MisWZkuNjQYOimE1FybWOLDOfbFOLeC"}
])
