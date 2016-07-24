class Bot
# Zhijian Wang (AI)
  def initialize
    @gesture = []
    @gestures = [:rock, :paper, :scissors, :spock, :lizard]
  end

  def gesture
    @gesture = @gestures[rand(4)]
  end
end
