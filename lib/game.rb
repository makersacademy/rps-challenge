require './lib/player'

class Game
  attr_reader :player_1, :comp_choice

  def self.instance
    @game
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def initialize(player_1)
    @player_1 = player_1
    @rules = { :rock => :scissors, :paper => :rock, :scissors => :paper }
  end

  def computer
    @comp_choice = [:rock, :paper, :scissors].sample
  end

  def result(player_choice, computer_choice) 
    if player_choice == computer_choice
      :draw
    elsif beats?(player_choice, computer_choice)
      :win
    else
      :loss
    end
  end

  def test
    :loss
  end

  private

  def beats?(player_choice, computer_choice)
    @rules[player_choice] == computer_choice
  end 
end
