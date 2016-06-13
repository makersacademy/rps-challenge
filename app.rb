require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
  	session[:players] = params[:players]
	@players = session[:players]
    erb :index
  end

  post '/play' do
  	@players = session[:players]
  	
  	session[:player1] = params[:player1]
  	session[:player2] = params[:player2]
	@player_1 = session[:player1]
    @player_2 = session[:player2]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
