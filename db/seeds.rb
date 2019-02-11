# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Console.create(name: "PS4")
c2 = Console.create(name:"Xbox One")
c3 = Console.create(name:"Switch")
c4 = Console.create(name: "Arcade")
c5 = Console.create(name: "Playstation(PS1)")
c6 = Console.create(name: "Xbox")
c7 = Console.create(name: "Wii")
g1 = Game.create(name: "God of War", release_year: 2018)
g1.consoles << c1
g2 = Game.create(name:"Red Dead Redepmtion 2", release_year: 2018)
g2.consoles << c1
g2.consoles << c2
g3 = Game.create(name: "Pong", release_year: 1972)
g3.consoles << c4
g4 = Game.create(name: "Pacman", release_year: 1980)
g5  = Game.create(name: "Crash Bandicoot", release_year: 1996)
g5.consoles << c5
u1 = User.create(name: "firstuser", password: "password", password_confirmation: "password")
u2 = User.create(name: "seconduser", password: "password", password_confirmation: "password")
u3 = User.create(name: "thirduser", password: "password", password_confirmation: "password")
u4 = User.create(name: "fourthuser", password: "password", password_confirmation: "password")
u5 = User.create(name: "fifthuser", password: "password", password_confirmation: "password")
u10 = User.create(name: "alexf", password: "passcode", password_confirmation: "passcode")
r1 = Review.create(rating: 5, content: "Game is most dope", user_id: 1, game_id: 1)
r2 = Review.create(rating: 4, content: "I loved this game, but the hyperrealism freaked me out at some times", user_id: 1, game_id: 2)
r3 = Review.create(rating: 2, content: "Peace, Love, and no War", user_id: 3, game_id: 1)
