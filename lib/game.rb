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

  def choices_made?
    @players.all? { |player| player.choice_made? }
  end

  def outcome
    player1, player2 = @players
    return "It's a Draw" if player1.choice == player2.choice

    @winner = player1_win? ? player1 : player2
    return "#{@winner.name} Wins!"
  end

  def reset_choices
    @players.each do |player|
      player.clear_choice
    end
  end

  def self.instance
    @game ||= Game.new
  end

  private

  def player1_win?
    player1, player2 = @players
    [
      player1.choice == 'rock' && player2.choice == 'scissors',
      player1.choice == 'paper' && player2.choice == 'rock',
      player1.choice == 'scissors' && player2.choice == 'paper'
    ].any?
  end
end
