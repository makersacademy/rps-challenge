require_relative "player"

class Game


  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  attr_reader :player, :player_name, :computer_hand, :player_hand

  def initialize(player)
    @player = player
    @computer_hand = ["Rock", "Paper", "Scissors"]
    @player_hand = []
  end

  def player_name
    player.name
  end

  def hand(choice)
    player_hand << choice
    comp_choice

  end

  def comp_choice
   n = Kernel.rand(0..2)
   player_hand << computer_hand[n]
  end

  def decide_winner
    if player_hand[0] == player_hand[1]
      "Try again"
    elsif player_hand[0]=="Rock" && player_hand[1]=="Scissors"
      "You Win"
    elsif player_hand[0]=="Paper" && player_hand[1]=="Rock"
      "You Win"
    elsif player_hand[0]=="Scissors" && player_hand[1]=="Paper"
      "You Win"
    else
      "You lose"
    end
  end







end
