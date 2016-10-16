require_relative "player"

class Game

  attr_reader :player, :player_name, :computer_hand, :player_hand

  def initialize(player)
    @player = player
    @computer_hand = ["rock", "paper", 'scissors']
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
   n = rand(0..2)
   player_hand << computer_hand[n]
 end



end
