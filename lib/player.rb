class Player

  attr_reader :name, :play_history, :outcome_history

  def initialize(name="the Computer")
    @name = name
    @play_history = []
    @outcome_history = []
  end

  def store_choice(choice)
    @play_history << choice
  end

  def store_outcome(outcome)
    @outcome_history << outcome
  end

end
