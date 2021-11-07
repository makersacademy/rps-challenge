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

  def winner # This needs tidying up if I had more time
    if player.move.downcase == 'rock' && computer.move == 'scissors'
      player_wins
    elsif player.move.downcase == 'rock' && computer.move == 'paper'
      computer_wins
    elsif player.move.downcase == 'scissors' && computer.move == 'paper'
      player_wins
    elsif player.move.downcase == 'scissors' && computer.move == 'rock'
      computer_wins
    elsif player.move.downcase == 'paper' && computer.move == 'rock'
      player_wins
    elsif player.move.downcase == 'paper' && computer.move == 'scissors'
      computer_wins
    elsif player.move == 'Invalid user move'
      invalid_player_move
    else
      draw
    end
  end

  private

  def player_wins
    @declare_winner = "#{player.name} wins!"
    player.add_point
  end

  def computer_wins
    @declare_winner = "#{computer.name} wins!"
    computer.add_point
  end

  def draw
    @declare_winner = "No one wins! It's a draw."
  end

  def invalid_player_move
    @declare_winner = "#{computer.name} wins! #{player.name} entered an invalid move!"
    computer.add_point
  end

end
