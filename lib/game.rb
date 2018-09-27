require 'pry'

class Game

  attr_reader :weapons, :player_shape

  def initialize(player_shape)
    @weapons = ["Rock", "Paper", "Scissor"]
    @player_shape = player_shape
  end

  def choice
    weapons.sample
  end

  def draw?(computer_shape)
    @player_shape == computer_shape
  end

  def result(computer_shape)
     if @player_shape == "Rock" && computer_shape == "Scissors"
       true
     elsif @player_shape == "Paper" && computer_shape == "Rock"
       true
     elsif @player_shape == "Scissors" && computer_shape == "Paper"
       true
     else
       false
     end
   end
end
