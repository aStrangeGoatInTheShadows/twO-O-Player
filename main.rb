require './game_math.rb'


# This class will hold the player, their remaining lives, and their score
class Player
  def initialize (player_num)
    @player_num = player_num
    @lives = 3
    @score = 0
  end
end




#  This class will hand input and output methods for the user on behalf of the game loop
class Game_IO 
  # This class only cares about immediate input and output, it does not store any of its own information

  def initialize ()
    puts "game io initialized"
  end

  def ask_question (player_num)

  end

  def output_scores (p1, p2) 

  end

end

#  This class will run the main game loop, it will keep track of whoes turn it is, check for game ending evalutations, 
class Game_Loop 


  def initialize ()
    @io_stream = Game_IO.new()
    @winner = false
    @whoes_turn = 1
    @player_one = Player.new(1)
    @player_two = Player.new(2)
    loop()
  end  

  
  def loop()
    while (!@winner) do
      # Ask the first player a math question
      question = Game_Math.new()
      
      @io_stream.output_scores(@player_one, @player_two)
      puts "This is our main game loop"
      @winner = true
    end
  end

end

game = Game_Loop.new()

  # List of nouns = generate_question, check_math, inform_loser, inform_winner, generate_new_turn