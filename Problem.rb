
class Problem 
  
  attr_reader :question :answer :wrong :right

  def initialize 
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def question
    "What does #{num1} + #{num2} equal?"
  end

  def answer 
    num1 + num2
  end

  def wrong
    "That is incorrect! Better luck next time."
  end

  def right
    "That is correct! Keep it up!"
  end

end
    