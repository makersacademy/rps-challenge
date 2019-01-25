class Game
  attr_reader :players, :total_rounds, :current_round, :turn

  def self.create(player1, player2, rounds)
    @game = Game.new(player1, player2, rounds)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2, rounds)
    @players = [player1, player2]
    @total_rounds = rounds.to_i
    @current_round = 0
    @turn = player1
  end

  def player1
    players.first
  end

  def player2
    players.last
  end

  def switch_turn
    turn == player1 ? @turn = player2 : @turn = player1
  end

  def winning?
    return player1.name if player1.score > player2.score
    return player2.name if player1.score > player2.score
    "Nobody"
  end

  def round_winner?
    beats = { 'Rock' => 'Scissors', 'Paper' => 'Rock', 'Scissors' => 'Paper' }
    return "Draw!" if player1.move == player2.move
    return player1 if beats[player1.move] == player2.move
    player2
  end

  def increment_round
    @current_round += 1
  end

  def game_over?
    break_point = total_rounds / 2
    return player1 if player1.score > break_point
    return player2 if player2.score > break_point
  end

end
