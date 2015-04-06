class RPS
  attr_reader :weapons, :computer_weapon
  attr_accessor :player_weapon

  def initialize
    # @player = Player.new(player1)
    # @computer = Player.new(player2)
    @weapons = { rock: 0, Spock: 1, paper: 2, lizard: 3, scissors: 4 }
  end

  def player1_choose weapon
    @player_weapon = weapon
  end

  def computer_choose
    weapons.keys.sample
  end

  def winner
    return "Player wins!" if result > 0 && result <= 2
    return "Computer wins!" if result > 2 && result <= 4
    return "Tie!" if result == 0
  end

  def player_index
    weapons[player_weapon.to_sym]
  end

  def computer_index
    weapons[computer_choose]
  end

  def result
    (player_index.to_i - computer_index.to_i) % 5
  end
end

# rps = RPS.new
# p rps.player1_choose 'rock'
# p rps.computer_choose
# p rps.player_index.inspect
# p rps.computer_index.inspect
# p rps.result.inspect
# p rps.winner

