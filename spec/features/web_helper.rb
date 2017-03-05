require 'game'

def new_player
  @player1 = session[:p1]
  Players.new(@player1)
end

def button_pressed
  if params[:rock] != nil
     @button_pressed = params[:rock].to_sym
  elsif params[:paper] != nil
     @button_pressed = params[:paper].to_sym
  else params[:scissors] != nil
      @button_pressed = params[:scissors].to_sym
  end
end

def new_game
  @game = Game.new(@button_pressed)
end

def computer_choice
  @x = @game.computer_select
end
