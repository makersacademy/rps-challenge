require_relative './player.rb'

class Game

  attr_reader :player1, :player2

  def initialize
    @player1 = Player.new
    @player2 = Player.new
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
      return "Draw!"
    elsif @winner_hash[@player1.hand] == @player2.hand
      return @player1.name
    else
      return @player2.name
    end
  end

  def computer_choice
    hand = ["Rock","Paper","Scissors"].sample
    @player2.thrown_hand(hand)
  end
end