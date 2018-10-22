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

  attr_reader :player_1_wins, :player_2_wins, :draws
  attr_accessor :move_number, :no_players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @player_1_wins = 0
    @player_2_wins = 0
    @draws = -1
    @no_players = 1
    @move_number = 0
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def outcome
    if player_1.move == '&nbsp;'
      '&nbsp;'
    elsif @no_players == 1
      result_1_player
    else
      result_2_players
    end

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



  def update_stats
    case stats_to_update
    when 'draw'
      @draws += 1
    when 'player_1'
      @player_1_wins += 1
    when 'player_2'
      @player_2_wins += 1
    end
  end

  def show_results?
    @move_number % 2 == 0
  end

  private

  def draw?
    player_1.move == player_2.move
  end

  def winner?
    RULES[player_1.move.to_sym].include?(player_2.move)
  end

  def winning_player
    winner? ? player_1.name : player_2.name
  end

  def result_2_players
    draw? ? "It's a draw." : "#{winning_player} wins!"
  end

  def result_1_player
    if draw?
      "It's a draw."
    elsif winner?
      "You win!"
    else
      "You lose!"
    end
  end

  def stats_to_update
    if draw?
      'draw'
    elsif winner?
      'player_1'
    else
      'player_2'
    end
  end

end
