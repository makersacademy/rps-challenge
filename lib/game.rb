require_relative 'computer_player'

class Game

  attr_reader :player1, :player2, :type

  def self.start(player1, player2, type)
    @current_game = Game.new(player1, player2, type)
  end

  def self.current
    @current_game
  end

  def initialize(player1, player2 = ComputerPlayer.new, type = "computer")
    @player1 = player1
    @player2 = player2
    @type = type
  end

  def name_of(player)
    player.name
  end

  def action(player, *action)
    player.move(action.first)
  end

  def winner
    rps = { rock: :scissors, paper: :rock, scissors: :paper }
    return name_of(player1) if player2.action == rps[player1.action]
    return name_of(player2) if player1.action == rps[player2.action]
    "Draw"
  end


end
