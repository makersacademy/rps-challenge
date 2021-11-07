require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :players, :game, :declare_winner

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @players = [player, computer]
    @declare_winner = nil
  end

  def player
    @players.first
  end

  def computer
    @players.last
  end

  def winner #This needs tidying up if I had more time
    if self.player.move.downcase == 'rock' && self.computer.move == 'scissors'
      player_wins
    elsif self.player.move.downcase == 'rock' && self.computer.move == 'paper'
      computer_wins
    elsif self.player.move.downcase == 'scissors' && self.computer.move == 'paper'
      player_wins
    elsif self.player.move.downcase == 'scissors' && self.computer.move == 'rock'
      computer_wins
    elsif self.player.move.downcase == 'paper' && self.computer.move == 'rock'
      player_wins
    elsif self.player.move.downcase == 'paper' && self.computer.move == 'scissors'
      computer_wins
    elsif self.player.move == 'Invalid user move'
      invalid_player_move
    else
      draw
    end
  end

  private

  def player_wins
    @declare_winner = "#{self.player.name} wins!"
    self.player.add_point
  end

  def computer_wins
    @declare_winner = "#{self.computer.name} wins!"
    self.computer.add_point
  end

  def draw
    @declare_winner = "No one wins! It's a draw."
  end

  def invalid_player_move
    @declare_winner = "#{self.computer.name} wins! #{self.player.name} entered an invalid move!"
    self.computer.add_point
  end

end
