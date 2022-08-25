# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'create users'
user_1 = User.create(name: 'Luis', last_name: 'Salinas')
user_2 = User.create(name: 'Luis', last_name: 'Salinas')
user_3 = User.create(name: 'Luis', last_name: 'Salinas')
# User.create(name: 'Luis', last_name: 'Salinas')
# User.create(name: 'Luis', last_name: 'Salinas')
# User.create(name: 'Luis', last_name: 'Salinas')
# User.create(name: 'Luis', last_name: 'Salinas')
# User.create(name: 'Luis', last_name: 'Salinas')
# User.create(name: 'Luis', last_name: 'Salinas')
# User.create(name: 'Luis', last_name: 'Salinas')
# User.create(name: 'Luis', last_name: 'Salinas')
# User.create(name: 'Luis', last_name: 'Salinas')
puts 'create comments'
Comment.create(commenter: 'hola', body:'tu', user_id: user_1.id)
Comment.create(commenter: 'hola', body:'tu', user_id: user_2.id)
Comment.create(commenter: 'hola', body:'tu', user_id: user_3.id)
puts 'create followers'
Follower.create(follower_name: 'jlmansilla', entero: 2, user: user_1)
Follower.create(follower_name: 'jlnegron', entero: 2, user: user_2)
Follower.create(follower_name: 'jm', entero: 2, user: user_3)



