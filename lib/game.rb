class Game
  RULES = { Rock: { Rock: :draw, Paper: :lose, Scissors: :win },
            Paper: { Rock: :win, Paper: :draw, Scissors: :lose },
            Scissors: { Rock: :lose, Paper: :win, Scissors: :draw }
          }.freeze

  attr_reader :player, :opponent, :chosen_move, :opponent_chosen_move

  def initialize(player = Player.new, opponent = Player.new)
    @player = player
    @opponent = opponent
    @chosen_move = nil
    @opponent_chosen_move = nil
    
  end

  def make_move(move)
    @chosen_move = move
  end

  def opponent_move(move = nil)
    move = random_move if move.nil?
    @opponent_chosen_move = move
  end

  def compare
    return @player if players_result == :win
    return @opponent if players_result == :lose
    nil 
  end

  private

  def random_move
    ["Rock", "Paper", "Scissors"].sample
  end

  def players_result
    RULES[@chosen_move.to_sym][@opponent_chosen_move.to_sym]
  end

end
