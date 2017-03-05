def new_player
  @player1 = session[:p1]
  Players.new(@player1)
end

def button_pressed
  arr = [params[:rock], params[:paper], params[:scissors]]
  arr.each {|x| @button_pressed = x.to_sym unless x == nil}
end

def new_game
  @game = Game.new(@button_pressed, Computer.new.selection)
end

def computer_choice
  @game.computer_selection
end
