class CPU

  attr_reader :choice

  def initialize
    @choice = %w(Rock Paper Scissors).sample
  end

end