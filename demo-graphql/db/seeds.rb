# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


post = Post.create!(
  title: "First post",
  description: "First post description",
)

Comment.create!(
  [
    {
      title: "1st comment",
      content: "This is my 1st comment",
      post: post
    },
    {
      title: "2nd comment",
      content: "This is my 2nd comment",
      post: post
    },
    {
      title: "3rd comment",
      content: "This is my 3rd comment",
      post: post
    },
    {
      title: "4th comment",
      content: "This is my 4th comment",
      post: post
    },
    {
      title: "5th comment",
      content: "This is my 5th comment",
      post: post
    }
  ]
)