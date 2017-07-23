class Game

  attr_reader :player, :computer

  RULES = {
    'ROCK' => { 'ROCK' => 'DRAW', 'PAPER' => 'YOU LOSE', 'SCISSORS' => 'YOU WIN' },
    'PAPER' => { 'ROCK' => 'YOU WIN', 'PAPER' => 'DRAW', 'SCISSORS' => 'YOU LOSE' },
    'SCISSORS' => { 'ROCK' => 'ROCK', 'PAPER' => 'SCISSORS', 'SCISSORS' => 'DRAW' }
  }

  def initialize(player, computer = Computer)
    @player = player
    @computer = computer.new
  end

  def player_name
    player.name
  end

  def player_choice(weapon)
    player.player_choice(weapon)
  end

  def player_weapon
    player.weapon
  end

  def computer_weapon
    computer.weapon
  end

  def computer_choice
    computer.computer_choice
  end

  def outcome
    RULES[player.weapon][computer.weapon]
  end

end
