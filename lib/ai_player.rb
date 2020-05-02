class AIPlayer

  CHOICES = ['rock', 'paper', 'scissors']

  def initialize(random = Random)
    @random = random
  end

  def choose_random
    CHOICES[(@random.rand(0.0...3.0).to_i)]
  end
end
