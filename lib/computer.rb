class Computer
  attr_reader :choices, :final_choice, :name
  def initialize
    @name = "Mr Computer"
    @choices = ["Rock", "Paper", "Scissors"]
    @final_choice = nil
  end

  def pick_one
    self.final_choice = self.choices.sample
  end

  private
  attr_writer :final_choice
end
