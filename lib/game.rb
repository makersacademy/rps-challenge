# lib/game.rb

require './lib/player'

class Game
  attr_reader :declaration, :players_num, :current_player, :other_player, :turn, :player_1, :player_2, :winner

  def initialize(player1, player2, players_num)
    @winmap = {
      :rock => :scissors,
      :scissors => :paper,
      :paper => :rock
    }
    @winner = nil
    @player_1 = player1
    @player_2 = player2
    @turn = 1
    @current_player = @player_1
    @other_player = @player_2
    @players_num = players_num
  end

  def switch_turn
    @current_player = player_2
    @other_player = player_1
    @turn += 1
  end

  def match
    if player_1.choice == player_2.choice
      @winner = nil
    elsif @winmap[player_1.choice] == player_2.choice
      @winner = player_1
    else
      @winner = player_2
    end
    set_winning_declaration
  end

  private

  def set_winning_declaration
    @declaration = "It is a tie!" if @winner == nil
    
    if players_num == 2 && (@winner != nil)
      @declaration = "#{@winner.name} wins!"
    end

    if @winner == player_1 && players_num == 1
      @declaration = "You Win!"
    elsif @winner == player_2 && players_num == 1
      @declaration = "You Lose!"
    end
  end
end
