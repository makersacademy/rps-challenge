class Game

  MOVES = [:rock, :paper, :scissors]
  RULES = {
            rock: :scissors,
            scissors: :paper,
            paper: :rock
          }

  def self.new_game(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  attr_reader :player, :opponent_move

  def initialize(player)
    @player = player
  end

  def result(player)
    return :draw if player.player_move ==  @opponent_move
    RULES[player.player_move] == @opponent_move ? :win : :lose
  end

  def computer_move
   @opponent_move = MOVES.sample
  end

end
