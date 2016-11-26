require './lib/weapon'
require './lib/computer'

class Game

  attr_accessor :user_choice, :computer_choice

  RULES = {
    Rock: :Scissors,
    Paper: :Rock,
    Scissors: :Paper
  }

  def self.instance
    @game
  end

  def self.create(user_choice)
    @game = Game.new(user_choice)
  end

  def initialize(user_choice)
    @user_choice = user_choice.to_sym
  end

  def get_computer_choice
    Computer.new.random_rps
  end

  def compare
    @computer_choice = get_computer_choice
    return :win if beat?
    return :tie if @user_choice == @computer_choice
    return :lose
  end

  private

  def beat?
    RULES[@user_choice] == @computer_choice
  end


end
