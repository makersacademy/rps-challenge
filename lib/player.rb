class Player
  attr_reader :choice, :name, :score
  CHOICES = [:rock, :paper, :scissors]
  
  def initialize(name = '')
    @name = name
    @choice = nil
    @score = 0
  end

  def choose(choice)
    msg = "Invalid choice. Should be one of " +
          "#{Player::CHOICES}"
    raise msg if invalid_choice?(choice)
    @choice = choice
  end

  private

  def invalid_choice?(choice)
    !Player::CHOICES.include?(choice)
  end
end
