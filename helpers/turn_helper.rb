module Turn_helper
  def turn_redirect(game)
    @game.turn(params[:choice])
    if @game.game_over == true
      redirect('/results')
    else
      redirect('/play')
    end
  end
end
