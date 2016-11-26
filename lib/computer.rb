class Computer

attr_reader :choice

  def initialize
    @choice
  end

  def random_select
    @choice = CHOICES.sample
  end

  private
  CHOICES = ["Rock", "Paper", "Scissors"]
end
