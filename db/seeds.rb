require 'random_data'

Post.destroy_all
Comment.destroy_all
Question.destroy_all

# Create Posts
50.times do
  Post.create!(

  title:  RandomData.random_sentence,
  body:  RandomData.random_paragraph
)
end
posts = Post.all

# Create Comments

100.times do
  Comment.create!(

  post: posts.sample,
  body: RandomData.random_paragraph
)
end

25.times do
  Question.create!(

  title: RandomData.random_sentence,
  body: RandomData.random_paragraph,
  resolved: false
)
end

puts "Seed finished"
puts "#{Post.count} post created"
puts "#{Comment.count} comments created"
