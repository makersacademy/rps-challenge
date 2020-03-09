module TurnHelper
  def turn_redirect(_game)
    @game.turn(params[:choice])
    if @game.game_over == true
      redirect('/results')
    else
      redirect('/play')
    end
  end
end
