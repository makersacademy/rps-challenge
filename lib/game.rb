# lib/game.rb

require './lib/player'

class Game
  attr_reader :players, :winner

  winmap = {
    :rock => :scissors,
    :scissors => :paper,
    :paper => :rock
  }

  def initialize(player1, player2)
    @players = [player1, player2]
    @winner = nil
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def match
    pick_winner(player1, player2)
    @winner
  end

  private

  def pick_winner(player1, player2)
    if player1.choice == player2.choice
      @winner = nil
    elsif winmap[player1.choice] == player2.choice
      @winner = player1
    else
      @winner = player2
    end
  end


end