# This class will hold the player, their remaining lives, and their score
class Player
  def initialize (playerNum)
    @playerNum = playerNum
    @lives = 3
    @score = 0
  end
end

# This will generate our questions as well as check the math for the questions
class Game_Math
  # relevent data - This class only cares about its question, answer and how evaluate it and inform the user


  def initialize ()
# This will generate a math question and save the answer in an instance variable
  end

  def is_correct (guess)
# compares the players guess to the answer
  end

end


#  This class will hand input and output methods for the user on behalf of the game loop
class Player_IO 
  # This class only cares about immediate input and output, it does not store any of its own information

end

#  This class will run the main game loop, it will keep track of whoes turn it is, check for game ending evalutations, 
class Game_Loop 

end


  # List of nouns = generate_question, check_math, inform_loser, inform_winner, generate_new_turn