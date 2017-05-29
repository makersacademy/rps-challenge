class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  MOVES = [:rock, :paper, :scissors]

 def add_player(name)
   @player_1 = Player.new(name)
 end

  def calculate_winner(player_1, player_2)
    if player_1.move == :rock
      if player_2.move == :rock
        'Draw'
      elsif player_2.move == :paper
        'Lose'
      else
        'Win'
      end
    elsif player_1.move == :paper
      if player_2.move == :rock
        'Win'
      elsif player_2.move == :paper
        'Draw'
      else
        'Lose'
      end
    elsif player_1.move == :scissors
      if player_2.move == :rock
        'Lose'
      elsif player_2.move == :paper
        'Win'
      else
        'Draw'
      end
    end
  end



end
