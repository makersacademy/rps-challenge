require 'weapon'

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

  def random_rps
    [:Rock, :Paper, :Scissors].sample
  end

  def compare
    @computer_choice = random_rps
    return :win if beat?
    return :tie if @user_choice == @computer_choice
    return :lose
  end

  private
  
  def beat?
    RULES[@user_choice] == @computer_choice
  end


end
