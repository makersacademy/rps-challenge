require './lib/player'

class Game
  attr_reader :player_1, :comp_choice

  RULES = { :rock => :scissors, :paper => :rock, :scissors => :paper }

  def self.instance
    @game
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def initialize(player_1)
    @player_1 = player_1
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

  private

  def beats?(player_choice, computer_choice)
    RULES[player_choice] == computer_choice
  end 
end
