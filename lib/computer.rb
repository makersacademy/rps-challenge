class Computer
  attr_reader :choice

  def initialize (choice = random_choice)
    @choice = choice
  end

  def set_choice
    @choice = random_choice
  end
  private

  def random_choice
    [:rock, :paper, :scissors].sample
  end
end
