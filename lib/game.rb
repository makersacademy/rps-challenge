require './lib/computer'

class Game

  attr_accessor :choice, :computer_choice

  RULES = { rock: :scissors,
    paper: :rock,
    scissors: :paper }

  def initialize(choice)
    @choice = choice.to_sym
  end

  def self.instance
    @game
  end

  def self.create(choice)
    @game = Game.new(choice)
  end

  def outcome
    @computer_choice = computer_chooses
    return :win if won?
    return :tie if @choice == @computer_choice
    return :lose
  end

  def computer_chooses
    Computer.new.cpu_choice
  end

  private

  def won?
    RULES[@choice] == @computer_choice
  end

end
