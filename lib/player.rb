class Player
  attr_reader :name, :choice

  def initialize(name = "GameBot", choice = computer_choice)
    @name = name
    @choice = choice.downcase.to_sym
  end

  private

  def computer_choice
    [:rock, :paper, :scissors, :lizard, :spock].sample
  end
end
