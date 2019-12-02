class GameSession
  attr_reader :actions
  ACTIONS = ["rock", "paper", "scissors", "lizard", "spock"]
  def initialize
    @actions = ACTIONS
    @decisions = []
  end

  def player_choose(index)
    @actions[index]
  end

  def cpu_choose
    @actions.sample
  end

  def round(index)
    @decisions = [player_choose(index), cpu_choose]
  end
end
