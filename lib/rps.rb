require_relative 'player'

class RPS

  WEAPONS = [:rock, :paper, :scissors]
  RULES = [{ rock: :scissors }, { paper: :rock }, { scissors: :paper }]

  attr_reader :players_choice, :random, :player

  def initialize(player = Player.new)
    @player = player
    @random = WEAPONS.sample
    @players_choice = @player.choice
    @game = { players_choice => random }
  end

  def play
    @player.choice == @random ? 'It looks like we are going no where!' : result
  end

  def result
    RULES.include?(@game) ?
    "You saved us, John Connor!!! #{@player.choice} beats #{@random}" :
    "Good job, John Connor.. The machines are rising... #{@random} beats #{@player.choice}"
  end

end
