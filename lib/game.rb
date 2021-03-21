require_relative './player.rb'

class Game
  
  attr_reader :player_1, :player_2
  
  def initialize(player_1)
    @player_1 = player_1
    @player_2 = "Computer"
  end   

  def play(player_1_move, player_2_move)   
    return nil if player_1_move == player_2_move

    if player_1_move == 'Rock' && player_2_move == 'Scissors' 
      @player_1
    elsif player_1_move == 'Rock' && player_2_move == 'Paper' 
      @player_2
    elsif player_1_move == 'Paper' && player_2_move == 'Rock' 
      @player_1
    elsif player_1_move == 'Paper' && player_2_move == 'Scissors' 
      @player_2
    elsif player_1_move == 'Scissors' && player_2_move == 'Rock' 
      @player_2
    elsif player_1_move == 'Scissors' && player_2_move == 'Paper' 
      @player_1
    end 
  end 

  # play method is way too long and complicated

  def computer
    moves = ["Rock", "Paper", "Scissors"]
    moves.sample
  end 

end 
