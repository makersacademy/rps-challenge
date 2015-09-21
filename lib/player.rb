class Player

  attr_reader :name, :choice, :choices

  def initialize(name)
    @name = name
    @choices = ["rock", "paper", "scissors"]
  end

  def select1(choice)
    fail "Make your choice: rock, paper or scissors." unless @choices.include?(choice)
    @choice = choice.to_sym
  end

end
