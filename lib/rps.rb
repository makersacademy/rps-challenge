class RPS
  attr_reader :game_log, :player, :result

  def self.create(player, game_log)
    @game = RPS.new(player, game_log)
  end

  def self.game
    @game
  end

  def initialize(player, game_log)
    @game_log = game_log
    @player = player
    @result = nil
  end

  def play(player_move, computer_move = random_move)
    @result = get_result(player_move, computer_move)
    @game_log.add_game(player_move, computer_move, @result)
  end

private

  def random_move
    ["rock", "paper", "scissors"].sample
  end

  def get_result(player, comp)
    if player == comp
      :draw
    elsif (player == "rock" && comp == "scissors") ||
      (player == "scissors" && comp == "paper") ||
      (player == "paper" && comp == "rock")
      :win
    else
      :loss
    end
  end

end
