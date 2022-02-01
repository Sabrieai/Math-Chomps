
class Player

  attr_accessor :lives, :name

  def initialize(name) 
    @lives = 3
    @name = name
  end

  def lose
  @lives -= 1
  end

end