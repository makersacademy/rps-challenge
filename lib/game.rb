require_relative 'player'

class Game

  attr_reader :player_1, :player_2
  attr_accessor :winner

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.instance
    @game
  end

  def choose_move(player, move)
    player.set_move(move)
  end

  def calculate_winner
    if player_1.move == player_2.move
      @winner = nil
    elsif (player_1.move == 'rock' && player_2.move == 'scissors') ||
        (player_1.move == 'scissors' && player_2.move == 'paper') ||
        (player_1.move == 'paper' && player_2.move == 'rock')
      @winner = player_1
    else
      @winner = player_2
    end
  end

end
