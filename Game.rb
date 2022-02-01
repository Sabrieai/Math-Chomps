
class Game
  attr_accessor :first, :round, :player1, :player2

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


  def round(player)
    problem = Problem.new
    puts "#{player.name}: #{problem.question}"
    player_answer = gets.chomp.to_i
    if player_answer == problem.answer
      problem.right
    end
    if player_answer != problem.answer
      problem.wrong
      player.lose
    end

    if player1.lives == 0
      self.over(player2)
    end

    if player2.lives == 0
      self.over(player1)
    end

    self.score
    puts "----- NEW TURN -----"
  end

  def score
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3 "
  end

  def over(winner)
    puts "#{winner.name} wins with a score of #{winner.lives}/3! \n ----- GAME OVER ----- \n Good Bye"
    exit
  end

end