require_relative 'cpu_player'

class Game

  def initialize
  @rules = {
  :r => {:r => :draw, :p => :p, :s => :r},
  :p => {:r => :p, :p => :draw, :s => :s},
  :s => {:r => :r, :p => :s, :s => :draw}
}
  end

  def play(p1_move, p2_move)
    @result = @rules[p1_move][p2_move]
    return :p1 if p1_move == result
    return :p2 if p2_move == result
    return :draw
	end

  def result
    @result
  end
end


# loop do 
#   result = game.play(view.players_next_move, bot.next_move)
#   view.display_result(result)
# end

