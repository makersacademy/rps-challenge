class Game

  RULES = {
    rock: ['scissors', 'lizard'],
    paper: ['rock', 'spock'],
    scissors: ['paper', 'lizard'],
    lizard: ['paper', 'spock'],
    spock: ['rock', 'scissors']
  }

  OUTCOMES = {
    rock_scissors: 'Rock smashes scissors.',
    rock_lizard: 'Rock crushes Lizard',
    paper_rock: 'Paper covers rock.',
    paper_spock: 'Paper disproves Spock',
    scissors_paper: 'Scissors cuts paper.',
    scissors_lizard: 'Scissors decapitates Lizard',
    lizard_spock: 'Lizard poisons Spock',
    lizard_paper: 'Lizard eats Paper',
    spock_scissors: 'Spock smashes Scissors',
    spock_rock: 'Spock vaporizes Rock'
    }

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  attr_reader :player_1_wins, :player_2_wins, :draws
  attr_accessor :move_number, :no_players, :game_type

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @player_1_wins = 0
    @player_2_wins = 0
    @draws = -1
    @no_players = 1
    @move_number = 0
    @game_type = 'rps'
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
    else
      @no_players == 1 ? result_1_player : result_2_players
    end

  end

  def action
    if draw?
      '&nbsp;'
    elsif winner?
      OUTCOMES["#{player_1.move}_#{player_2.move}".to_sym]
    else
      OUTCOMES["#{player_2.move}_#{player_1.move}".to_sym]
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
    (@move_number % 2).zero?
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
    else
      winner? ? "You win!" : "You lose!"
    end
  end

  def stats_to_update
    if draw?
      'draw'
    else
      winner? ? 'player_1' : 'player_2'
    end
  end

end
