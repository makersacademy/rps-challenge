class Game

  attr_reader :player, :computer, :weapons, :player_weapon

  def initialize(player, computer)
    @player = player
    @computer = computer
    @weapons = { "Rock" => :rock, "Paper" => :paper, "Scissors" => :scissors }
    @player_weapon = []
  end

  def start(player_weapon)
    if @weapons.has_key?(player_weapon)
    @player_weapon << @weapons.fetch(player_weapon)
  end
  end

  def player_weapon_string
    @player_weapon.join
  end

  def computer_weapon
    @computer.weapon_choice
  end

  def game_weapons
    @player_weapon << computer_weapon()
    @player_weapon.flatten
  end

  WIN = [
    [:rock, :s],
    [:paper, :rock],
    [:s, :paper]
  ]

  DRAW = [
    [:rock, :rock],
    [:paper, :paper],
    [:s, :s]
  ]

  def win?
    WIN.include?(game_weapons())
  end

end
