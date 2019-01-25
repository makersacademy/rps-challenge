class Game
  attr_reader :players, :total_rounds, :current_round

  def self.create(player_one, player_two, rounds)
    @game = Game.new(player_one, player_two, rounds)
  end

  def self.instance
    @game
  end

  def initialize(player_one, player_two, rounds)
    @players =[player_one, player_two]
    @total_rounds = rounds.to_i
    @current_round = 0
  end

  def player_one
    players.first
  end

  def player_two
    players.last
  end

  def winning?
    return player_one.name if player_one.score > player_two.score
    return player_two.name if player_one.score > player_two.score
    "Nobody"
  end

  def round_winner?
    return player_one if player_one.move == "Rock" && player_two.move == "Scissors"
    return player_one if player_one.move == "Scissors" && player_two.move == "Paper"
    return player_one if player_one.move == "Paper" && player_two.move == "Rock"
    return "Draw!" if player_one.move == player_two.move
    player_two
  end

  def increment_round
    @current_round += 1
  end

  def game_over?
    break_point = total_rounds / 2
    return player_one if player_one.score > break_point
    return player_two if player_two.score > break_point
  end

end
