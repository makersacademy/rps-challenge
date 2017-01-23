require_relative 'player'

class Game

attr_reader :player1, :player2
  def initialize(name1)
    @player1 = Player.new(name1)
  end


  def winner
    if @player1.choice == @player2.choice
      'No one'
    elsif @player1.choice == :Rock && @player2.choice == :Scissors
      'Player 1'
    elsif @player1.choice == :Paper && @player2.choice == :Rock
      'Player 1'
    elsif @player1.choice == :Scissors && @player2.choice == :Paper
      'Player 1'
    else
      'Player 2'
    end
  end


  def second_player(name)
    @player2 = Player.new(name)
  end

  def player1_choice
    @player1.choice
  end

  def player2_choice
    @player2.choice
  end
  def self.create(name1)
    @game ||= Game.new(name1)
  end

  def self.instance
  @game
  end
end
