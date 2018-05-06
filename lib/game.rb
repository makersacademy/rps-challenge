class Game

  WEAPON = [:rock, :paper, :scissors]
  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

  attr_reader :player_weapon, :computer_weapon, :result

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
    @result = nil
  end

  def add_player_weapon(choice)
    @player_weapon = choice
  end

  def add_computer_weapon
    @computer_weapon = WEAPON.sample
  end

  def win
    @result = :win if RULES[player_weapon] == computer_weapon
  end

end
