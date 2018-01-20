class Game

  attr_reader :player_move, :bot_move

  def initialize(player_move, bot_move)
    @player_move = player_move
    @bot_move = bot_move
  end

  def winner
    if player_move == :rock && bot_move == :scissors ||
       player_move == :paper && bot_move == :rock ||
       player_move == :scissors && bot_move == :paper
        "player wins"
    elsif  player_move == bot_move
        "draw"
    else
        "bot wins"
    end
  end

end
