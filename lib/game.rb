# lib/game.rb

require './lib/player'

class Game
  attr_reader :players

  def initialize(player1, player2)
    @winmap = {
      :rock => :scissors,
      :scissors => :paper,
      :paper => :rock
    }
    @players = [player1, player2]
    @winner = nil
    @declaration = ""
  end

  def declaration
    @declaration
  end

  def winner
    @winner
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def match
    if player_1.choice == player_2.choice
      @winner = nil
      puts "here"
      @declaration = "It is a tie!"
    elsif @winmap[player_1.choice] == player_2.choice
      @winner = player_1
      puts "there"
      @declaration = "You Win!"
    else
      @winner = player_2
      puts "everywhere"
      @declaration = "You Lose!"
    end
    @winner
    puts @declaration
  end

  # private

  # def pick_winner
  #   if player_1.choice == player_2.choice
  #     @winner = nil
  #   elsif @winmap[player_1.choice] == player_2.choice
  #     @winner = player_1
  #     p "there #{@winner}"
  #   else
  #     @winner = player_2
  #     p "here"
  #   end
  # end

end