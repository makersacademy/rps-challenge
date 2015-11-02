class Game

  WEAPONS = [:rock, :paper, :scissors]
  RULES = {scissors: :paper, paper: :rock, rock: :scissors}

  attr_reader :player, :computer

  def initialize (player_klass = Player.new(:player1, weapon = nil), computer_klass = Computer.new(weapon = nil))
    @player = player_klass
    @computer = computer_klass
  end

  def result
    return :win if player.weapon == RULES.key(computer.weapon)
    return :lose if player.weapon == RULES[computer.weapon]
    return :draw if player.weapon == computer.weapon
  end
end