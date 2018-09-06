# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

game_1 = BoardGame.create(title: "Zombie Dice")
game_2 = BoardGame.create(title: "Pandemic")
game_3 = BoardGame.create(title: "Gloomhaven")
game_4 = BoardGame.create(title: "Connect Four")
game_5 = BoardGame.create(title: "Ticket to Ride")
game_6 = BoardGame.create(title: "Sherlock Holmes: Consulting Detective")
game_7 = BoardGame.create(title: "Exploding Kittens")
game_8 = BoardGame.create(title: "King of Tokyo")
game_9 = BoardGame.create(title: "Betrayl at House on the Hill")
game_10 = BoardGame.create(title: "Forbidden Desert")

user_1= User.create(username: "Trevor5", location: "Denver", password: "bat", role:0)
user_2= User.create(username: "SeanisCool", location: "Denver", password: "cat", role:0)
user_3= User.create(username: "GabetheLame", location: "Dallas", password: "pat", role:0)
user_4= User.create(username: "Robert_o", location: "Dallas", password: "tat", role:0)
user_5= User.create(username: "sandraisfromspace", location: "Dallas", password: "mat", role:0)
user_6= User.create(username: "VariVentures", location: "Denver", password: "sat", role:0)
admin = User.create(username: "GracieIsInCharge", location: "Denver", password: "Gracieisacat", role: 1)

UserBoardGame.create(user: user_1, board_game:game_1, own_or_play: "own")
UserBoardGame.create(user: user_1, board_game:game_2, own_or_play: "play")
UserBoardGame.create(user: user_2, board_game:game_3, own_or_play: "play")
UserBoardGame.create(user: user_2, board_game:game_4, own_or_play: "own")
UserBoardGame.create(user: user_3, board_game:game_5, own_or_play: "play")
UserBoardGame.create(user: user_3, board_game:game_6, own_or_play: "own")
UserBoardGame.create(user: user_4, board_game:game_7, own_or_play: "play")
UserBoardGame.create(user: user_4, board_game:game_8, own_or_play: "own")
UserBoardGame.create(user: user_5, board_game:game_9, own_or_play: "play")
UserBoardGame.create(user: user_5, board_game:game_2, own_or_play: "own")
UserBoardGame.create(user: user_5, board_game:game_1, own_or_play: "own")
UserBoardGame.create(user: user_6, board_game:game_3, own_or_play: "own")
UserBoardGame.create(user: user_6, board_game:game_10, own_or_play: "own")
UserBoardGame.create(user: user_6, board_game:game_7, own_or_play: "own")
UserBoardGame.create(user: user_6, board_game:game_9, own_or_play: "own")
