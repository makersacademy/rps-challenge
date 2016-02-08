class Cpu
  def initialize
    @name = "CPU"
  end

  def pick
    ($rules == 'normal')? (@choice = hands[0..2].sample) : (@choice = hands.sample)
  end

  attr_reader :choice, :name

  private

  attr_reader :hands

  def hands
    ["Rock", "Paper", "Scissors", "Spock", "Lizard"]
  end

end

