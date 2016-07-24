require_relative 'computer_player'

class Game

  attr_reader :player1, :player2

  def self.start(player1)
    @current_game = Game.new(player1)
  end

  def self.current
    @current_game
  end

  def initialize(player1, player2 = ComputerPlayer.new)
    @player1 = player1
    @player2 = player2
  end

  def name_of(player)
    player.name
  end

  def action(action)
    player1.move(action)
  end

  def computer_turn
    player2.move
  end

  def winner
    rps = { rock: :scissors, paper: :rock, scissors: :paper }
    return name_of(player1) if player2.action == rps[player1.action]
    return name_of(player2) if player1.action == rps[player2.action]
    "Draw"
  end


end
