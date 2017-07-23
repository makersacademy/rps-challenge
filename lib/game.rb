class Game

  RULES = {
    'ROCK' => { 'ROCK' => 'DRAW', 'PAPER' => 'YOU LOSE', 'SCISSORS' => 'YOU WIN' },
    'PAPER' => { 'ROCK' => 'YOU WIN', 'PAPER' => 'DRAW', 'SCISSORS' => 'YOU LOSE' },
    'SCISSORS' => { 'ROCK' => 'YOU LOSE', 'PAPER' => 'YOU WIN', 'SCISSORS' => 'DRAW' }
  }

  attr_reader :length, :round

  def initialize(player, length, computer = Computer)
    @player = player
    @computer = computer.new
    @length = length.to_i
    @round = 1
  end

  def player_name
    player.name
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

  def computer_score
    computer.score
  end

  def battle
    computer_choice
    score
  end

  def outcome
    RULES[player.weapon][computer.weapon]
  end

  def over?
    player.score == (length / 2) + 1 || computer.score == (length / 2) + 1
  end

  def self.create(player, length)
    @game = Game.new(player, length)
  end

  def self.instance
    @game
  end

  private

  attr_reader :player, :computer

  def computer_choice
    computer.computer_choice
  end

  def score
    if outcome == 'YOU WIN'
      player.score_up
    elsif outcome == 'YOU LOSE'
      computer.score_up
    end
  end

end
