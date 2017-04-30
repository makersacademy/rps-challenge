require_relative 'computer'

# Understand play mechanics
class Game
  attr_reader :player_1, :player_2, :choice, :winner

  def initialize(player1, player2 = Computer.new)
    @player_1 = player1
    @player_2 = player2
  end

  def self.default
    @actors = [:Trump, :Clinton]
  end

  def self.french
    @actors = [:Macron, :LePen]
  end

  def self.english
    @actors = [:Corbyn, :May]
  end

  def self.country
    @actors
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

  def pick_winner
    declare_winner.include?(@player_1.name) ? @winner = Game.country[0] : @winner = Game.country[1]
  end

  private

  def equal?
    @player_1.choice == @player_2.choice
  end

  def player_one_wins?
    send(@player_1.choice.downcase)
  end

  def rock
    [:Scissors, :Lizard].include?(@player_2.choice)
  end

  def scissors
    [:Paper, :Lizard].include?(@player_2.choice)
  end

  def paper
    [:Rock, :Spock].include?(@player_2.choice)
  end

  def lizard
    [:Paper, :Spock].include?(@player_2.choice)
  end

  def spock
    [:Rock, :Scissors].include?(@player_2.choice)
  end
end
