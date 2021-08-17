# This will generate our questions as well as check the math for the questions
class Game_Math
  # relevent data - This class only cares about its question, answer and how evaluate it and inform the user


  def initialize ()
  # This will generate a math question and save the answer in an instance variable
    @a = rand(20)
    @b = rand(1..20)
    @operand = choose_operand()    
    @answer =  eval"#{@a}#{@operand}#{@b}"

    puts "a:#{@a} b:#{@b} operand:#{@operand}"
    puts @answer
  end

  # This generates a random number an returns a operand based on that
  def choose_operand()
    operand = nil
    
    num = rand(1..4)

    if num == 1 
      return "+"
    elsif num == 2 
      return "-"
    elsif num == 3 
      return "*"
    else num == 4 
      return "/"
    end
  end

  # lets us know if the guess was correct or not
  def is_correct (guess)
    guess == @answer
  end

  attr_reader :a, :b, :operand
end

