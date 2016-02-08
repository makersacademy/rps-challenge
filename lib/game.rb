class Game

  attr_reader :player_1, :weapon, :computer_weapon, :draw, :player_winner

  def initialize(player_1_name, player_klass = Player)
    @player_1 = player_klass.new(player_1_name)
    @computer_weapon = nil
    @player_winner = false
    @draw = false
    @win_conditions = { scissors: :paper, paper: :rock, rock: :scissors }
  end


  def choose_weapon(weapon)
    @player_1.set_weapon(weapon)
  end

  def computer_choose_weapon
    @computer_weapon = [:rock, :paper, :scissors].sample
  end

  def who_wins

    @player_1.weapon.to_s == @computer_weapon.to_s ? @draw = true : @draw = false
    @win_conditions[@player_1.weapon.to_s] == @computer_weapon ? @player_winner = false : @player_winner = true

  end


end
