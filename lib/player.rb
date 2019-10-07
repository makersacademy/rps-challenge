class Player
  attr_reader :name, :play

  def initialize(name)
    @name = name
    @play = ""
  end

  def choose_play(selection)
    @play = selection
  end
end
