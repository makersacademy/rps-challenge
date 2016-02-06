require 'sinatra/base'

class Rps < Sinatra::Base

 	get '/' do
    erb(:index)
  end

	post '/names' do 
	$player1 = params[:player_1]
	redirect('/start')
	end

	get '/start' do
	@player1 = $player1	
	erb(:start)
	end

	post '/tool' do 
	$tool = params[:tool]
	redirect('/play')
	end

	get '/play' do 
	@tool = $tool	
	erb(:play)
	end


 run! if app_file == $0

end



