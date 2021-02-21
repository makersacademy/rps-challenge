class RPS

  def self.create(player)
    @game = RPS.new(player)
  end

  def self.game
    @game
  end

  def initialize(player)
    @player = player
    @result = nil
  end

  def result
    @result
  end

  def play(player_move, computer_move = random_move)
    @result = get_result(player_move, computer_move)
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
