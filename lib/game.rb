class Game

  attr_reader :player_count, :player, :cpu_player, :current_player, :loser
 
  PLAY_OPTIONS = [:rock, :paper, :scissors]

  BEATS =   { rock: :scissors,
              paper: :rock,
              scissors: :paper
            }

  def initialize player,cpu_player,player_count
    @player_count = player_count
    @players = [player,cpu_player]
    @current_player = player
  end

  def player
    @players.first
  end

  def cpu_player
    @players.last
  end

  def rock
    @current_player.rock
  end

  def paper
    @current_player.paper
  end

  def scissors
    @current_player.scissors
  end

  def random_choice
    choice = PLAY_OPTIONS.sample
    case 
    when choice == :rock
      rock
    when choice == :paper
      paper
    when choice == :scissors
      scissors
    end    
  end

  def switch_turns
    @current_player = opponent(@current_player)
  end

  def opponent(current_player)
    @players.detect { |player| player != current_player }
  end

  def winner
    return :draw if player.hand == cpu_player.hand
    return player.name if cpu_player.hand == BEATS[player.hand]
    return cpu_player.name if player.hand == BEATS[cpu_player.hand] 
  end

end