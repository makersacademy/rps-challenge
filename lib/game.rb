require './lib/player.rb'

class Game
  attr_reader :player1, :player1_move, :player2, :player2_move

  def initialize(player1, move1, player2, move2 = ["Rock", "Paper", "Scissors", "Spock", "Lizard"])
    @player1 = player1
    @player2 = player2
    @player1_move = move1
    if move2.kind_of?(Array)
      @player2_move = move2.sample
    else
      @player2_move = move2
    end
  end

  def self.create(player1, move1, player2, move2 = ["Rock", "Paper", "Scissors", "Spock", "Lizard"])
    @game = Game.new(player1, move1, player2, move2)
  end

  def self.instance
    @game
  end
 
  def winner
    if @player1_move == @player2_move
      "It's a draw!"
    else
      case @player1_move
      when "Rock"
        case @player2_move
        when "Scissors", "Lizard"
          "#{@player1.name} wins!"
        when "Paper", "Spock"
          "#{@player2.name} wins!"
        end
      when "Scissors"
        case @player2_move
        when "Paper", "Lizard"
          "#{@player1.name} wins!"
        when "Rock", "Spock"
          "#{@player2.name} wins!"
        end
      when "Paper"
        case @player2_move
        when "Rock", "Spock"
          "#{@player1.name} wins!"
        when "Scissors", "Lizard"
          "#{@player2.name} wins!"
        end
      when "Spock"
        case @player2_move
        when "Rock", "Scissors"
          "#{@player1.name} wins!"
        when "Paper", "Lizard"
          "#{@player2.name} wins!"
        end
      when "Lizard"
        case @player2_move
        when "Paper", "Spock"
          "#{@player1.name} wins!"
        when "Scissors", "Rock"
          "#{@player2.name} wins!"
        end
      end
    end
  end
end
