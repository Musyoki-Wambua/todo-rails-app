puts "Doing some magic ..."
20.times do 
    # Todo.create(
    #     title = Faker::Job.title,
    #     description = Faker::ChuckNorris.fact
    # )
    title = Faker::Job.title
    description = Faker::ChuckNorris.fact
    Todo.create(title: title, description: description)
end

5.times do 
    email = Faker::Internet.email
    password = Faker::String.random(length: 6)
    User.create(email: email, password_digest: password)
end

puts "Houdini caught up with us"