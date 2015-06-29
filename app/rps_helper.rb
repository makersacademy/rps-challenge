require_relative 'sign_game'
require_relative 'rock'
require_relative 'paper'
require_relative 'scissors'

module RPSSetterUpper
  def new_game
    SignGame.new rock: Rock.new, paper: Paper.new, scissors: Scissors.new
  end

  def update_status
    session[:player_count]   += 1 if @result.split(" ")[1] == "wins"
    session[:computer_count] += 1 if @result.split(" ")[1] == "loses"
  end

  def check_for_winner
    @winner = session[:name] if session[:player_count]   == 3
    @winner = "Computer"     if session[:computer_count] == 3
  end

  def reset
    session[:player_count]   = 0
    session[:computer_count] = 0
  end
end
