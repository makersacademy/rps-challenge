require 'sinatra/base'

class RPS < Sinatra::Base
enable :sessions

 	get '/' do
    erb(:index)
  end

	post '/names' do 
	session[:player_1] = params[:player_1]
	redirect('/start')
	end

	get '/start' do
	@player1 = session[:player_1] 
	erb(:start)
	end

	post '/weapon' do 
	session[:weapon] = params[:weapon]
	redirect('/play')
	end

	get '/play' do 
	@weapon = session[:weapon]
	erb(:play)
	end


 run! if app_file == $PROGRAM_NAME

end



