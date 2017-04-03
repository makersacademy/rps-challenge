require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player1, :player2

  RULES = { "rock" => "scissors",
          "paper" => "rock",
          "scissors" => "paper" }

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def result
    puts "#{player1.choice} #{player2.choice}"
    if RULES[player1.choice] == player2.choice
      puts "win"
      :win
    elsif RULES[player2.choice] == player1.choice
      puts "lose"
      :lose
    elsif player1.choice == player2.choice
      puts "draw"
      :draw
    end
  end
end
