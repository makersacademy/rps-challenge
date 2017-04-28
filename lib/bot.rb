class Bot
  attr_reader :choices
  
  def self.play
    choices = [
      :rock,
      :paper,
      :scissors
    ]
    @choice = choices[rand(0..2)]
  end

end
