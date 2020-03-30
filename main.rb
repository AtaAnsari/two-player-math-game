# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require './game'

newGame = Game.new

newGame.game_loop


