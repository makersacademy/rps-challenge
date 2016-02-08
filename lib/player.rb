class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def option(option)
    fail 'Enter Rock, Paper or Scissors' if incorrect? option
    @choice = option
  end

private

  def incorrect?(option)
    correct_options = ["Rock", "Paper", "Scissors"]
    !correct_options.include?(option)
  end
end
