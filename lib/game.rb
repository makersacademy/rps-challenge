class Game

def initialize(player_1, player_2 = Player.new)
  @player_1 = player_1
  @player_2 = player_2
end

  def calculate_winner(player_1, player_2)
    case player_1.throws == :rock
      when player_2.throws == :rock
        'Draw'
      when player_2.throws == :paper
        'Lose'
      else
        'Win'
      end
    case player_1.throws == :paper
      when player_2.throws == :rock
        'Win'
      when player_2.throws == :paper
        'Draw'
      else
        'Lose'
      end
    case player_1.throws == :scissors
      when player_2.throws == :rock
        'Lose'
      when player_2.throws == :paper
        'Win'
      else
        'Draw'
      end
  end

end
