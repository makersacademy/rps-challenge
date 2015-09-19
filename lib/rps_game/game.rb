require_relative 'cpu_player'

class Game

  attr_reader :rules, :p1_move, :p2_move

  def initialize
  @rules = {
  :r => {:r => :draw, :p => :p, :s => :r},
  :p => {:r => :p, :p => :draw, :s => :s},
  :s => {:r => :r, :p => :s, :s => :draw}
}
  end

  def p1_move(move)
    @p1_move = move
  end

  def p2_move(move)
    @p2_move = move
  end

  def play
    @winning_move = rules[@p1_move][@p2_move]
    return :p1 if @p1_move == @winning_move
    return :p2 if @p2_move == @winning_move
    return :draw
	end

end

# loop do 
#   result = game.play(view.players_next_move, bot.next_move)
#   view.display_result(result)
# end