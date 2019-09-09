class Rivalbot
  attr_reader :robo_choice

  def initialize
  end

  def make_choice
    @robo_choice = ['rock', 'paper', 'scissors'].sample
  end

end
