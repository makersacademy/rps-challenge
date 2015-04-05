class AI
  attr_reader :choice

  def initialize
    @choice = %w(rock paper scissors).sample
  end

  def name
    "Computer"
  end
end