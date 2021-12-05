require_relative './player.rb'

class Game

  attr_reader :player1, :player2, :draws

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @draws = 0
    @winner_hash = {"Scissors" => "Paper", "Paper" => "Rock", "Rock" => "Scissors"}
  end

  def set_name(name1, name2 = "Computer")
    @player1.change_name(name1)
    @player2.change_name(name2)
  end

  def thrown_hands(hand, player = 1)
    if player == 1
      @player1.thrown_hand(hand)
    else
      @player2.thrown_hand(hand)
    end
  end

  def winner
    if @player1.hand == @player2.hand
      @draws += 1
      return "Draw! No one"
    elsif @winner_hash[@player1.hand] == @player2.hand
      @player1.add_win
      return @player1.name
    else
      @player2.add_win
      return @player2.name
    end
  end

  def reset_wins
    @player1.reset_win
    @player2.reset_win
  end

  def computer_choice
    hand = ["Rock","Paper","Scissors"].sample
    @player2.thrown_hand(hand)
  end
end