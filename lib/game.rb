class Game

  RULES = {
    'ROCK' => { 'ROCK' => 'DRAW', 'PAPER' => 'YOU LOSE', 'SCISSORS' => 'YOU WIN' },
    'PAPER' => { 'ROCK' => 'YOU WIN', 'PAPER' => 'DRAW', 'SCISSORS' => 'YOU LOSE' },
    'SCISSORS' => { 'ROCK' => 'YOU LOSE', 'PAPER' => 'YOU WIN', 'SCISSORS' => 'DRAW' }
  }

  attr_reader :player, :computer, :length, :round, :player_score, :computer_score

  DEFAULT_LENGTH = 3

  def initialize(player, computer = Computer)
    @player = player
    @computer = computer.new
    @length = DEFAULT_LENGTH
    @round = 1
    @player_score = 0
    @computer_score = 0
  end

  def player_name
    player.name
  end

  def max_rounds(number)
    length = number
  end

  def next_round
    @round += 1
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

  def score
    if outcome == 'YOU WIN'
      @player_score += 1
    elsif outcome = 'YOU LOSE'
      @computer_score += 1
    end
  end

  def game_over?
    player_score == (length/2) +1 || computer_score == (length/2) +1
  end

end
