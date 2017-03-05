require_relative 'player'
require_relative 'opponent'

class RPS

  attr_reader :player, :opponent, :player_choice, :opponent_move

  RULES = {Rock: :Scissors,
           Paper: :Rock,
           Scissors: :Paper}

  def initialize(player, opponent=Opponent.new)
    @player = player
    @opponent = opponent
    @opponent_move
  end

  def self.create(player)
    @player = Player.new(player)
    @game = RPS.new(player=@player)
  end

  def self.instance
    @game
  end
# opponent makes their move which is then assigned to an instance variable
# this is then passed to the evaluate_result method which calculates the outcome
  def outcome
    @opponent_move = @opponent.move
    evaluate_result
  end

  def evaluate_result
    return :tie if same_choice?
    return :win if player_wins?
    return :lose if player_loses?
  end

  private

  def same_choice?
    @player.player_choice == @opponent_move
  end

  def player_wins?
    RULES[@player.player_choice] == @opponent_move
  end

  def player_loses?
    RULES[@player.player_choice] != @opponent_move
  end
end
