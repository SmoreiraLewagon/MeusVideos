Video.destroy_all
Tag.destroy_all
Comment.destroy_all

puts "cretae video"

Video.create!(
  title: 'teste 1',
  url: 'https://www.youtube.com/embed/wbZ6yrVxScM'
)

Video.create!(
  title: 'teste 2',
  url: 'https://www.youtube.com/embed/wbZ6yrVxScM'
)

Video.create!(
  title: 'teste 3',
  url: 'https://www.youtube.com/embed/wbZ6yrVxScM'
)

Tag.create!(
  category: 'drama',
  favorite: true,
  video_id: Video.first.id
)
Tag.create!(
  category: 'comedy',
  favorite: true,
  video_id: Video.second.id
)
Tag.create!(
  category: 'terror',
  favorite: false,
  video_id: Video.last.id
)

Comment.create!(
  body: "teste",
  author: "teste",
  video_id: Video.first.id

)
Comment.create!(
  body: "teste",
  author: "teste",
  video_id: Video.second.id
)
Comment.create!(
  body: "teste",
  author: "teste",
  video_id: Video.last.id
)

Comment.create!(
  body: "teste",
  author: "teste",
  video_id: Video.first.id

)
Comment.create!(
  body: "teste",
  author: "teste",
  video_id: Video.second.id
)
Comment.create!(
  body: "teste",
  author: "teste",
  video_id: Video.last.id
)

Comment.create!(
  body: "teste",
  author: "teste",
  video_id: Video.first.id

)
Comment.create!(
  body: "teste",
  author: "teste",
  video_id: Video.second.id
)
Comment.create!(
  body: "teste",
  author: "teste",
  video_id: Video.last.id
)