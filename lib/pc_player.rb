class PcPlayer
  attr_reader :name, :play
  OPTIONS = ["rock", "paper", "scissors"]

  def initialize(name = "PC")
    @name = name
    @play = ""
  end
  def set_play(useless = "")
    @play = OPTIONS.sample
  end
end
