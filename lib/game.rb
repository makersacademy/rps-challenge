class Game
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

  private

  def random_move
    ["Rock", "Paper", "Scissors"].sample
  end

end
