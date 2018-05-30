require('pry')
require_relative('models/artists')
require_relative('models/albums')

Artist.delete_all()
Album.delete_all()

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

artist1.name = 'Shirley Bassey'
artist1.update()

album1.title = 'I am what I am'
album1.genre  = 'Classical'
album1.update()
album1.delete()
artist1.delete()



binding.pry
nil
