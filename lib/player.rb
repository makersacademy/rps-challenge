class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def enter_choice(choice)
    valid_choices = ["Rock", "Paper", "Scissors"]
    raise "Invalid choice" if valid_choices.include?(choice) == false
    @choice = choice
  end

end
