require_relative 'computer'
require_relative 'country'

# Understands play mechanics
class Game
  attr_reader :player_1, :player_2, :choice

  def initialize(player1, player2 = Computer.new)
    @player_1 = player1
    @player_2 = player2
    @compare = Proc.new { |x, y| [x, y].include?(@player_2.choice) }
  end

  def self.start(player)
    @game = Game.new(player)
  end

  def self.current
    @game
  end

  def declare_winner
    return "It's a draw!" if equal?
    return "#{@player_1.name} wins!" if player_one_wins?
    "#{@player_2.name} wins!"
  end

  def add_player_two(player)
    @player_2 = player
  end

  def winner_name
    declare_winner.include?(@player_1.name) ?
    Country.current[0] : Country.current[1]
  end

  private

  def equal?
    @player_1.choice == @player_2.choice
  end

  def player_one_wins?
    send(@player_1.choice.downcase)
  end

  def rock
    @compare.call(:Scissors, :Lizard)
  end

  def scissors
    @compare.call(:Paper, :Lizard)
  end

  def paper
    @compare.call(:Rock, :Spock)
  end

  def lizard
    @compare.call(:Paper, :Spock)
  end

  def spock
    @compare.call(:Scissors, :Rock)
  end
end
