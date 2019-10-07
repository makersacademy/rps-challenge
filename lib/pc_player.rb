class PcPlayer
  attr_reader :name, :play
  OPTIONS = ["rock", "paper", "scissors"]

  def initialize(name = "PC")
    @name = name
    @play = ""
  end

  def choose_play(*)
    @play = OPTIONS.sample
  end
end
