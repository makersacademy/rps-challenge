class Game

  attr_reader :players, :player_1, :player_2, :winner, :chosen_weapons

  def initialize(player_1,player_2)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
    @chosen_weapons = []
  end

  def outcome(p1weapon, p2weapon)
    chosen_weapons << p1weapon
    chosen_weapons << p2weapon
    if chosen_weapons.include?('rock') && chosen_weapons.include?('paper')
      @winner = 'paper'
    elsif chosen_weapons.include?('rock') && chosen_weapons.include?('scissors')
      @winner = 'rock'
    elsif chosen_weapons.include?('paper') && chosen_weapons.include?('scissors')
      @winner = 'scissors'
    else
      @winner = 'tie'
    end
  end

end
