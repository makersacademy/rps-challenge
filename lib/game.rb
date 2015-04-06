class Game

  attr_reader :player_1, :comp_player, :turn, :player_select
  attr_accessor :comp_player, :player_1, :select, :player_wins, :comp_wins

  def initialize player_1, comp_player
    @player_1, @comp_player, @turn = player_1, comp_player, player_1
    @player_wins = 0
    @comp_wins = 0
  end

  def opponent
    turn == player_1 ? comp_player : player_1
  end

  def comp_generator
    @comp_gen = [[:rock], [:paper], [:scissors]]
    @comp_gen.sample
  end

  def player_select(select)
    [] << select.downcase.to_sym
  end

  def comp_select
    comp_player = comp_generator
  end
 
 def compare_hands (player_select, comp_select)
    if player_select == comp_select
      "Draw"
    elsif (player_select == [:rock] && comp_select == [:scissors]) || (player_select == [:scissors] && comp_select == [:paper]) || (player_select == [:paper] && comp_select == [:rock])
      puts "Player 1 wins"
      @player_wins += 1
    else
      puts "Computer wins"
     @comp_wins += 1
   end
 end
end