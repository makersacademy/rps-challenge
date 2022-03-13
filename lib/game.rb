class Game

  attr_reader :player

  def initialize(player) 
    @player = player
  end

  def winner(player_1_move:, player_2_move:)
    return "#{@player}" if calculate_winner == player_1_move
    return "#{@player2}" if calculate_winner == player_2_move
    #or something similar
  end


end

# initialise with an optional player 2 that defaults to a CPU.new
# CPU should have a move method that returns [rock, paper, scissors].sample
# player already has a last_move method
# rename last_move to move so that the 2 objects have polymorphism
# winner should take a player 1 and player 2 move
# should calculate which is the winning move
# need to figure out how to return the winning entity, maybe a hash