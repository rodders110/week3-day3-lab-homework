require('pry')
require_relative('models/artists')
require_relative('models/albums')

artist1 = Artist.new({
  'name' => 'Alice Cooper'
  })
  artist1.save()

album1 = Album.new({
  'title' => 'Paranormal',
  'genre' => 'Rock',
  'artist_id' => artist1.id
  })
album1.save()

query1 = artist1.list_albums()
artist_list = Artist.all()
album_list = Album.all()
artist_query = album1.artist()



binding.pry
nil
