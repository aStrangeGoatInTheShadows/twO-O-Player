require './game_math.rb'
require './game_io.rb'


# This class will hold the player, their remaining lives
# LOGIC CHANGE : SCORES ARE REMAINING STARTING_LIVES
class Player
  STARTING_LIVES = 3
  
  def initialize (player_num)
    @player_num = player_num
    @remaining_lives = STARTING_LIVES
  end

  def devestating_loss_of_life ()
    @remaining_lives -= 1
  end

  attr_reader :remaining_lives, :STARTING_LIVES
end

#  This class will run the main game loop, it will keep track of whoes turn it is, check for game ending evalutations, 
class Game_Loop 


  def initialize ()
    @io_stream = Game_IO.new()
    @winner = false
    @player_one = Player.new(1)
    @player_two = Player.new(2)
    @whoes_turn = 1
    @players = [@player_one, @player_two]
    main_game_loop()
  end  

  def change_player_turn ()
    if @whoes_turn == 1
      @whoes_turn = 2
    else
      @whoes_turn = 1
    end
  end
  
  def main_game_loop()
    while (!@winner) do
      # Ask the first player a math question
      
      correct_guess = @io_stream.ask_question(@whoes_turn)

      if(!correct_guess)
        @players[@whoes_turn - 1].devestating_loss_of_life
      end

      @winner = @player_one.remaining_lives < 0|| @player_two.remaining_lives < 0 

      if !@winner
        @io_stream.output_scores(@player_one, @player_two)
      end

      puts "----------------------------------------"

      change_player_turn()
    end

    puts "Congradulations Player #{@whoes_turn}, You've won the game."
  end
end

# Go!
game = Game_Loop.new()

  # List of nouns = generate_question, check_math, inform_loser, inform_winner, generate_new_turn