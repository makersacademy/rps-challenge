class Game

  RULES = {
    rock: ['scissors', 'lizard'],
    paper: ['rock', 'spock'],
    scissors: ['paper' 'lizard'],
    lizard: ['paper', 'spock'],
    spock: ['rock', 'scissors']
  }

  OUTCOMES = {
    rock: 'Rock smashes scissors.',
    paper: 'Paper covers rock.',
    scissors: 'Scissors cuts paper.'
  }

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def outcome
    if player_1.move == ''
      '&nbsp;'
    elsif draw?
      "It's a draw."
    elsif winner?
      "You win!"
    else
      "You lose!"
    end
  end

  def draw?
    player_1.move == player_2.move
  end

  def winner?
    RULES[player_1.move.to_sym].include?(player_2.move)
  end

  def action
    if draw?
      '&nbsp;'
    elsif winner?
      OUTCOMES[player_1.move.to_sym]
    else
      OUTCOMES[player_2.move.to_sym]
    end
  end

end
