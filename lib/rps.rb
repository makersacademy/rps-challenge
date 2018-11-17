class RPS

  WEAPONS = [ :rock, :paper, :scissors]
  RULES = [  {rock: :scissors}, {paper: :rock},{ scissors: :paper}]

  attr_reader :choice, :random, :game

  def initialize(choice)
    @choice = choice
    @random = WEAPONS.sample
    @game = { choice => random }
  end

  def play
     choice == random ? 'It looks like we are going no where!' : result
  end

  private
  def result
    RULES.include?(game) ? 'You saved us, John Connor!!!' : 'Good job, John Connor.. The machines are rising...'
  end

end
