require_relative 'player'
class Game

  attr_reader :player, :comp_rpc, :player_rpc, :winner

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def generate_rpc
    @comp_rpc = random_rpc
  end

  def store_player_rpc(player_rpc)
    @player_rpc = player_rpc
  end

  def check_winner
    if draw
      self.comp_rpc = nil
      self.player_rpc = nil
      "Draw"
      @winner = nil
    elsif win
      @winner = player.name
    else
      "Player loses"
      @winner = "Computer"
    end
    reset_choices
  end

  def print_winner
    if winner
      "#{winner} has won!"
    else
      "It's a draw, play again?"
    end
  end


  private

  attr_writer :comp_rpc, :player_rpc

  def random_rpc
    [:rock,:paper,:scissors].sample
  end

  def reset_choices
    self.comp_rpc = nil
    self.player_rpc = nil
  end

  def draw
    player_rpc == comp_rpc
  end

  def win
    player_rpc == :rock && comp_rpc == :scissors ||
    player_rpc == :paper && comp_rpc == :rock    ||
    player_rpc == :scissors && comp_rpc == :paper
  end

end
