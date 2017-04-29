require_relative 'computer'

class Game
  attr_reader :player_1, :player_2, :choice, :old_name

  def initialize(player1, player2 = Computer.new)
    @player_1 = player1
    @player_2 = player2
  end

  def self.start(player)
    @game = Game.new(player)
  end

  def self.current
    @game
  end

  def declare_winner
    return "#{@player_2.message}. It's a draw!" if equal?
    return "#{@player_2.message}. You win!" if player_wins?
    "#{@player_2.message}. You lose!"
  end

  def add_player_two(player)
    @player_2 = player
  end

  private

  def equal?
    @player_1.choice == @player_2.choice
  end

  def player_wins?
    @player_1.choice == :Rock && @player_2.choice == :Scissors ||
    @player_1.choice == :Scissors && @player_2.choice == :Paper ||
    @player_1.choice == :Paper && @player_2.choice == :Rock
  end
end
