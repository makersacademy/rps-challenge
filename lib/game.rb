class Game

  attr_reader :player, :computer, :weapons, :player_weapon

  def initialize(player, computer, player_weapon = [])
    @player = player
    @computer = computer
    @weapons = { "Rock" => :rock, "Paper" => :paper, "Scissor" => :scissor }
    @player_weapon = player_weapon
  end

# TODO refactor to be a guard clause not a conditional
  def start(player_weapon)
    if @weapons.has_key?(player_weapon)
      @player_weapon << @weapons.fetch(player_weapon)
    end
    @player_weapon
  end

end
