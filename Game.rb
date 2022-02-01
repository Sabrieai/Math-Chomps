
class Game
  attr_accessor :first, :round_player, :player1, :player2

  def initialize
    puts "Welcome to Math Chomps! A game where you can put your math chops to the test!"
    puts "Hello! What is your name?"
    name1 = gets.chomp
    player1 = Player.new(name1)
    @player1 = player1

    puts "And you are not alone! What is your friends name?"
    name2 = gets.chomp
    player2 = Player.new(name2)
    @player2 = player2
  end


  def round_player(player)
    problem1 = Problem.new
    puts "#{player.name}: #{problem1.question}"
    player_answer = gets.chomp.to_i
    if player_answer == problem1.answer
      problem1.right
    end
    if player_answer != problem1.answer
      problem1.wrong
      player.lose
    end
  end

end