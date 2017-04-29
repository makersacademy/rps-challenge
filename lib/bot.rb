class Bot
  attr_reader :choices

  def self.play
    choices = [
      :rock,
      :paper,
      :scissors,
      :lizard,
      :spock
    ]
    @choice = choices[rand(0..4)]
  end

end
