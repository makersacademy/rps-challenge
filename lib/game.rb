require './lib/weapon'
require './lib/computer'

class Game

  attr_accessor :user_choice, :computer_choice, :name

  RULES = {
    Rock: :Scissors,
    Paper: :Rock,
    Scissors: :Paper
  }

  def self.instance
    @game
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def initialize(name)
    @name = name
  end

  def set_user_choice(user_choice)
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
