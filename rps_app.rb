require 'sinatra'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1 = params[:player1]
    session['player_name'] = @player1
    erb(:play)
  end

  post '/selection' do
    @selection = params[:option]
    @server_selection = ['rock', 'paper', 'scissors'].sample
    @player_name = session['player_name']
    @winner = ""
    if @selection == @server_selection
      @winner = "This is a draw"
    elsif (@selection == "rock" && @server_selection == "paper") || (@selection == "scissors" && @server_selection == "rock") || (@selection == "paper" && @server_selection == "scissors")
      @winner = "The computer"
    else
      @winner = @player_name
    end

    erb(:selection)
  end

  run! if app_file == $0
end
