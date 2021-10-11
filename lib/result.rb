class Result
  def initialize(game)
    @game = game
  end

  def result_gif
    if @game.winner == @game.player1
      # embedded GIF code from GIHPY that shows Gianluigi Buffon celebrating
      '<iframe src="https://giphy.com/embed/jntidcZucjlkI" width="480" height="270" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>'
    elsif @game.winner == @game.player2
      # embdedded GIF showing crying dude
      '<iframe src="https://giphy.com/embed/d2lcHJTG5Tscg" width="480" height="270" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>'
    else
      # embdedded GIF showing Nick Young hitting the rim for a 3-pointer
      '<iframe src="https://giphy.com/embed/EimNpKJpihLY4" width="480" height="365" frameBorder="0" class="giphy-embed" allowFullScreen></iframe>'
    end
  end

  def result_string
    return "You won #{@game.player1.name}, #{@game.player2.name} chose #{@game.player2.action}" if @game.winner == @game.player1
    return "#{@game.player2.name} chose #{@game.player2.action} so you lose, #{@game.player1.name}" if @game.winner == @game.player2
    return "It's a draw, you both chose #{@game.player2.action}"
  end
end
