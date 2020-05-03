class AIPlayer
  attr_reader :name, :choice

  def initialize(random = Random)
    @random = random
    @name = '愛'
  end

  def choose_random
    Choices::MOVES[@random.rand(0.0...5.0).to_i]
  end

  def choose(_choice = 'placeholder')
    @choice = choose_random
  end
end
