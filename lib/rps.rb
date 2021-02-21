class RPS

  def self.create(player)
    @game = RPS.new(player)
  end

  def self.game
    @game
  end

  def initialize(player, game_log = GameLog.new)
    @game_log = game_log
    @player = player
    @result = nil
  end

  def game_log
    @game_log
  end

  def player
    @player
  end

  def result
    @result
  end

  def play(player_move, computer_move = random_move)
    @result = get_result(player_move, computer_move)
    @game_log.add_game(player_move, computer_move, @result)
  end

private

  def random_move
    ["rock", "paper", "scissors"].sample
  end

  def get_result(player_move, computer_move)
    case player_move
    when computer_move
      :draw
    when "rock"
      computer_move == "scissors" ? :win : :loss
    when "scissors"
        computer_move == "paper" ? :win : :loss
    when "paper"
        computer_move == "rock" ? :win : :loss
    end
  end

end
