class Game

  attr_reader :game_type,
              :player_count, 
              :player, 
              :cpu_player, 
              :current_player, 
              :loser
 
  PLAY_OPTIONS = [:rock, :paper, :scissors]

  LOSES_TO =   { rock: :scissors,
                 paper: :rock,
                 scissors: :paper
               }

  def initialize player,cpu_player,player_count
    @game_type = :classic
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

  def weopon weopon
    @current_player.weopon(weopon)
  end

  def random_choice
    choice = PLAY_OPTIONS.sample
    weopon(choice)
  end

  def switch_turns
    @current_player = opponent(@current_player)
  end

  def opponent current_player
    @players.detect { |player| player != current_player }
  end

  def winner
    return :draw if player.hand == cpu_player.hand
    return player.name if cpu_player.hand == LOSES_TO[player.hand]
    return cpu_player.name if player.hand == LOSES_TO[cpu_player.hand] 
  end
  
end