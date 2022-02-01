require './Player'
require './Problem'
require './Game'



thisGame =  Game.new

player1 = thisGame.player1
player2 = thisGame.player2

while thisGame
  thisGame.round(player1)
  thisGame.round(player2)
end

