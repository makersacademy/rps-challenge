class Computer
  attr_reader :choices, :final_choice, :name
  def initialize
    @name = "The Computer"
    @choices = ["Rock", "Paper", "Scissors"]
    @final_choice = nil
  end

  def pick_one
    self.final_choice = choices.sample
  end

  private
  attr_writer :final_choice
end
