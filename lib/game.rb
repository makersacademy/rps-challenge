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
    player1.name
  end

  def attack(action)
    rps = { rock: :scissors, paper: :rock, scissors: :paper }
    player2.move == rps[action]
  end

  def action(action)
    player1.action
  end

end
