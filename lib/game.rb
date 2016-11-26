require_relative 'random_choice'

CHOICES = [:rock, :paper, :scissors]

class Game

  def self.create(choice)
    @game = Game.new(choice)
  end

  def self.instance
    @game
  end

  attr_reader :choice, :random_choice

  def initialize(choice)
    @choice = choice
    @random_choice = RandomChoice.new.index
  end

  def result
    return "draw" if choice == CHOICES[random_choice]
    return "lose" if choice == CHOICES[(random_choice-1)]
    "win"
  end

  def computer_choice
    CHOICES[random_choice].to_s
  end

  def player_choice
    choice.to_s
  end




end
