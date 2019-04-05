class PcPlayer
  OPTIONS = ["rock", "paper", "scissors"]
  def self.play
    OPTIONS[rand(OPTIONS.size)]
  end
end
