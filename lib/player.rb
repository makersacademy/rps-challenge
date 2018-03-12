class Player
  attr_accessor :name, :choice

  def initialize(name)
    @name = name
    @choice = nil
    @choices = ['rock', 'paper', 'scissors']
  end

  def defend
    @choices.sample
  end

end
