class Bot
  attr_reader :choices

  def self.name
    names = [
      'Sheldonbot',
      'Leonardbot',
      'Rajeshbot',
      'Howardbot'
    ]
    names.sample
  end

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
