#  This class will hand input and output methods for the user on behalf of the game loop
class Game_IO 
  # This class only cares about immediate input and output, it does not store any of its own information

  def initialize ()
  end

    # This takes in the mathmatical operand and puts it out.... in plain english....
  def operand_to_plain_english(operand)  
  
    if operand == "+"
      return "plus"
    elsif operand == "-"
      return "minus"
    elsif operand =="*"
      return "times"
    else operand == "/"
      return "divided by"
    end
  end

  def ask_question (player_num)
    question = Game_Math.new()
    operand_plain_english = operand_to_plain_english(question.operand)

    puts "Player #{player_num}: What does #{question.a} #{operand_plain_english} #{question.b} equal?"
    guess = gets.to_i

    # Returns if the question is a correct guess or not after output
    # Would not do it this way in a more complex program
    if question.is_correct(guess)
      puts "Congradulations Player #{player_num}, you are smarter than a slug."
      true
    else
      puts "Player #{player_num}, we gotta slap some toast on that head and make an idiot sandwhich."
      puts "You have inched that much closer to your eventual demise"
      false
    end
  end

  # Outputs the scores to the screen
  def output_scores (p1, p2) 
    puts "P1: #{p1.remaining_lives} / 3 VS P2: #{p2.remaining_lives} / 3"
  end

end
