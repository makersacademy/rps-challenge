require_relative 'player'

class RPS

  WEAPONS = [ :rock, :paper, :scissors]
  RULES = [  {rock: :scissors}, {paper: :rock},{ scissors: :paper}]

  attr_reader :choice, :random, :game, :player

  def initialize(player = Player.new)
    @player = player
    @random = WEAPONS.sample
    @game = { choice => random }
  end

  def play
     @player.choice == random ? 'It looks like we are going no where!' : result
  end

  def result
    RULES.include?(game) ? 'You saved us, John Connor!!!' : 'Good job, John Connor.. The machines are rising...'
  end

end
