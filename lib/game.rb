class Game

  attr_reader :player_name, :computer_klass, :computer_turn, :player_weapon

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player_name, computer_klass=Computer)
    @player_name = player_name
    @computer_klass = computer_klass
  end

  def start_game(player_weapon)
    @computer_turn = computer_klass.new
    @player_weapon = player_weapon
  end

end
