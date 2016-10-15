class Game

  MOVES = [:rock, :paper, :scissors]
  RULES = {
            rock: :scissors,
            scissors: :paper,
            paper: :rock
          }

  def Game.new_game(player)
    @game = Game.new(player)
  end

  def Game.instance
    @game
  end

  attr_reader :player

  def initialize(player)
    @player = player
  end


  def result(player)
    return :draw if player.player_move ==  computer_move
    RULES[player.player_move] == computer_move ? :win : :lose
  end

  private

  def computer_move
    MOVES.sample
  end

end
