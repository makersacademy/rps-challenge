require_relative 'random_choice'

CHOICES = ["rock", "paper", "scissors"]

class Game

  def self.create(choice)
    @game = Game.new(choice)
  end

  def self.instance
    @game
  end

  attr_reader :choice, :comp_choice

  def initialize(choice)
    @choice = choice
    @comp_choice = RandomChoice.new.index
  end

  def result
    return "draw" if choice == CHOICES[comp_choice]
    return "lose" if choice == CHOICES[(comp_choice-1)]
    "win"
  end





end
