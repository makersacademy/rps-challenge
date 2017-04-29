require_relative 'computer'

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
    @actors = [:LePen, :Macron]
  end

  def self.actors
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
    declare_winner.include?(@player_1.name) ? @winner = 'Trump' : @winner = 'Clinton'
  end

  private

  def equal?
    @player_1.choice == @player_2.choice
  end

  def player_one_wins?
    rock_wins? || scissors_wins? || paper_wins? || lizard_wins? || spock_wins?
  end

  def rock_wins?
    @player_1.choice == :Rock && [:Scissors, :Lizard].include?(@player_2.choice)
  end

  def scissors_wins?
    @player_1.choice == :Scissors && [:Paper, :Lizard].include?(@player_2.choice)
  end

  def paper_wins?
    @player_1.choice == :Paper && [:Rock, :Spock].include?(@player_2.choice)
  end

  def lizard_wins?
    @player_1.choice == :Lizard && [:Paper, :Spock].include?(@player_2.choice)
  end

  def spock_wins?
    @player_1.choice == :Spock && [:Rock, :Scissors].include?(@player_2.choice)
  end
end
