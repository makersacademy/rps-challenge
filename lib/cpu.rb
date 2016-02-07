class Cpu
  def initialize
    @name = "CPU"
  end

  def pick
    if $game_rules == 'normal'
      @choice = ["Rock", "Paper", "Scissors"].sample
    else
      @choice = ["Rock", "Paper", "Scissors", "Spock", "Lizard"].sample
    end
  end

  attr_reader :choice, :name
end