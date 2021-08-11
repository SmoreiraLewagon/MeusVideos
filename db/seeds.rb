Video.destroy_all
Tag.destroy_all

puts "cretae video"

Video.create!(
  title: 'teste 1',
  url: 'https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200'
)

Video.create!(
  title: 'teste 2',
  url: 'https://images.unsplash.com/photo-1493809842364-78817add7ffb?w=1200'
)

Video.create!(
  title: 'teste 3',
  url: 'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=1200'
)

Tag.create!(
  category: 'drama',
  favorite: true,
  video_id: Video.first.id
)

Tag.create!(
  category: 'terror',
  favorite: false,
  video_id: Video.last.id
)