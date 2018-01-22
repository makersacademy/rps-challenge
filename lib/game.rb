class Game

  attr_reader :player, :player_weapon, :computer_weapon, :result

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
    @computer = Computer.new
  end

  def choose_weapon(weapon)
    @player_weapon = weapon.to_sym
  end

  def computer_choose_weapon
    @computer_weapon = @computer.choose_weapon
  end

  def result
    @result = determine_winner
  end

  private

  def determine_winner
    if @computer_weapon == @player_weapon
      :tied
    else
      RULES[@player_weapon] == @computer_weapon ? :won : :lost
    end
  end



end
