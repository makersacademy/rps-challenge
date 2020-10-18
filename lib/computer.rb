class Computer

  attr_reader :choice

  def initialize
    @choice = rps_choice
  end

private

  def rps_choice
    ['Rock', 'Paper', 'Scissors'].sample
  end

end
