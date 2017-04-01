class Game

  attr_reader :player, :comp_rpc, :player_rpc

  def initialize(player)
    @player = player
  end

  def generate_rpc
    @comp_rpc = random_rpc
  end

  def store_player_rpc(player_rpc)
    @player_rpc = player_rpc
  end

  def check_winner
    if player_rpc == comp_rpc
      draw
    elsif
       player_rpc == :rock && comp_rpc == :scissors ||
       player_rpc == :paper && comp_rpc == :rock    ||
       player_rpc == :scissors && comp_rpc == :paper
      "PLAYER WINS!!"
    else
      "Player loses"
    end

  end

  private

  def random_rpc
    [:rock,:paper,:scissors].sample
  end
end
