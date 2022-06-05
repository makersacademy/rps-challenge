# lib/game.rb

require './lib/player'

class Game
  attr_reader :players, :declaration, :players_num, :current_player, :other_player, :turn

  def initialize(player1, player2, players_num)
    @winmap = {
      :rock => :scissors,
      :scissors => :paper,
      :paper => :rock
    }
    @players = [player1, player2]
    @winner = nil

    @turn = 1
    @current_player = @players[0]
    @other_player = @players[1]

    @declaration = ""
    @players_num = players_num
  end

  def declaration
    @declaration
  end

  def switch_turn
    @current_player = player_2
    @other_player = player_1
    @turn = 2
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
    elsif @winmap[player_1.choice] == player_2.choice
      @winner = player_1
    else
      @winner = player_2
    end

    if @winner == nil
      @declaration = "It is a tie!"
    elsif players_num == 2
      @declaration = "#{@winner.name} wins!"
    else
      if @winner == player_1
        @declaration = "You Win!"
      else
        @declaration = "You Lose!"
      end
    end
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