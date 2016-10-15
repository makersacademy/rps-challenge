class Player

  attr_reader :name, :play_history

  def initialize(name="the Computer")
    @name = name
    @play_history = []
  end

  def store_choice(choice)
    @play_history << choice
  end

end
