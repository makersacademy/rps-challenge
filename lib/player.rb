require_relative 'computer.rb'

class Player

  attr_reader :opponent_attack, :name, :attack
  def initialize(name)
    @name =name
    @attack 
  end

  def play(object)
    @attack = object
    compare(Computer.new.select_object)
  end 



  def compare(computer_object)
    if @attack == computer_object
      "draw"
    elsif  @attack == 'rock' && computer_object == 'paper'
      "Paper covers rock - You loose"
    elsif  @attack == 'rock' && computer_object == 'scissors'
      "Rock bashes scissors - You win"
    end
  end
end 