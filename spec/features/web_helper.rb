def new_player
  @player1 = session[:p1]
  Players.new(@player1)
end

def button_pressed
  arr = [params[:ROCK], params[:PAPER], params[:SCISSORS]]
  arr.each {|x| @button_pressed = x.to_sym unless x == nil}
end

def new_game
  @game = Game.new(@button_pressed, Computer.new.selection)
end

def computer_choice
  @game.computer_selection
end

def player_choice
  @game.player_selection
end
