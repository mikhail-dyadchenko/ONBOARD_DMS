users = []
def create_users
  i = 0

  10.times do
    user_data = {
      email: "user_#{i}@email.com",
      password: 'testtest'
    }

    user = User.create!(user_data)
    puts "User created with id #{user.id}"

    i += 1
  end
end

10.times do |i|
  Post.create(
    title: "Post Title #{i + 1}",
    body: "This is the body of post #{i + 1}.",
    user: users.sample
  )
end

puts "Created #{User.count} users and #{Post.count} posts."
