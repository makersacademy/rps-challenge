class AIPlayer
  attr_reader :name, :choice

  CHOICES = ['rock', 'paper', 'scissors']

  def initialize(random = Random)
    @random = random
    @name = '愛'
  end

  def choose_random
    CHOICES[(@random.rand(0.0...3.0).to_i)]
  end

  def choose
    @choice = choose_random
  end
end
