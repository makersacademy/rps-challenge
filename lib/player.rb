class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def update_choice(choice = "")
    return @choice = ["Rock", "Paper", "Scissors"].sample if @name == "Computer"
    @choice = choice
  end

  def random_choice
    @choice = ["Rock", "Paper", "Scissors"].sample
  end
end
