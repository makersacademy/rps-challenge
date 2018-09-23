class Player
  attr_reader :choice, :name, :score
  CHOICES = [:rock, :paper, :scissors]
  
  def initialize(name = '')
    @name = name
    @choice = nil
    @score = 0
  end

  def choose(choice)
    return random_choice if choice == :random
    raise "Invalid choice. Should be one of " +
          "#{Player::CHOICES}" if invalid_choice?(choice)
    @choice = choice
  end

  def reset_choice
    @choice = nil
  end

  private

  def invalid_choice?(choice)
    !Player::CHOICES.include?(choice)
  end

  def random_choice
    @choice = Player::CHOICES.sample
  end
end
