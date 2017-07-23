class Game

  RULES = {
    'ROCK' => { 'ROCK' => 'DRAW', 'PAPER' => 'YOU LOSE', 'SCISSORS' => 'YOU WIN' },
    'PAPER' => { 'ROCK' => 'YOU WIN', 'PAPER' => 'DRAW', 'SCISSORS' => 'YOU LOSE' },
    'SCISSORS' => { 'ROCK' => 'YOU LOSE', 'PAPER' => 'YOU WIN', 'SCISSORS' => 'DRAW' }
  }

  attr_reader :player, :computer, :length, :round, :computer_score

  DEFAULT_LENGTH = 3

  def initialize(player, computer = Computer)
    @player = player
    @computer = computer.new
    @length = DEFAULT_LENGTH
    @round = 1
  end

  def player_name
    player.name
  end

  def max_rounds(number)
    @length = number.to_i
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

  def player_score
    player.score
  end

  def computer_weapon
    computer.weapon
  end

  def computer_choice
    computer.computer_choice
  end

  def computer_score
    computer.score
  end

  def outcome
    RULES[player.weapon][computer.weapon]
  end

  def score
    if outcome == 'YOU WIN'
      player.score_up
    elsif outcome == 'YOU LOSE'
      computer.score_up
    end
  end

  def game_over?
    player.score == (@length / 2) + 1 || computer.score == (@length / 2) + 1
  end

end
