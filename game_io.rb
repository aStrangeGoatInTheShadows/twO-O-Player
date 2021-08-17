#  This class will hand input and output methods for the user on behalf of the game loop
class Game_IO 
  # This class only cares about immediate input and output, it does not store any of its own information

  def initialize ()
    puts "game io initialized"
  end

  def ask_question (player_num)

  end

  def output_scores (p1, p2) 
    puts "P1: #{p1.remaining_lives} / #{p1.STARTING_LIVES}"
  end

end
