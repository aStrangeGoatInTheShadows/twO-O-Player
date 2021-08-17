#  This class will hand input and output methods for the user on behalf of the game loop
class Game_IO 
  # This class only cares about immediate input and output, it does not store any of its own information

  def initialize ()
    puts "game io initialized"
  end

  def ask_question (player_num)
    question = Game_Math.new()
    operand_plain_english = question.operand

    puts "Player #{player_num}: What does #{question.a} #{operand_plain_english} #{question.b} equal?"
    guess = gets.to_i

    if question.is_correct(guess)
      puts "Congradulations Player #{player_num}, you are smarter than a slug."
    else
      puts "Player #{player_num}, we gotta slap some toast on that head and make an idiot sandwhich."
      puts "You have inched that much closer to your eventual demise"
    end
  end

  def output_scores (p1, p2) 
    puts "P1: #{p1.remaining_lives} / 3 VS P2: #{p2.remaining_lives} / 3"
  end

end
