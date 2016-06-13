require 'sinatra/base'

class RPS < Sinatra::Base
	enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
  	session[:player_name] = params[:name]
  	redirect '/play'
  end

  get '/play' do
  	@game = Game.new(session)
  	# @name = session[:name]
  	# @choice = session[:choice]
  	# @opponent_choice = session[:opponent_choice]
  	erb :play
  end
  

  post '/play' do
  	session[:player_choice] = params[:choice]
  	session[:opponent_choice] = :rock
  	redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
