require_relative 'player'

class Game
  attr_reader :players

  def initialize(player_class = Player)
    @players = []
    @player_class = player_class
    @winner = nil
  end

  def add_player(player_name, computer_controlled = false)
    @players << @player_class.new(player_name, computer_controlled)
  end

  def add_computer_opponents
    add_player('Computer', true) if number_of_players < 2
  end

  def number_of_players
    @players.count
  end

  def reset
    @players = []
  end

  def outcome
    player1, player2 = @players
    return "It's a Draw" if player1.choice == player2.choice

    player1_wins = [
      (player1.choice == 'rock' && player2.choice == 'scissors'),
      (player1.choice == 'paper' && player2.choice == 'rock'),
      (player1.choice == 'scissors' && player2.choice == 'paper')
    ]
    @winner = player1_wins.any? ? player1 : player2
    return "#{@winner.name} Wins!"
  end

  def self.instance
    @game ||= Game.new
  end
end
