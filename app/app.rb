require 'sinatra/base'

class Rps < Sinatra::Base

 	get '/' do
    erb(:index)
  end

	post '/start' do 
	@player1 = params[:player_1]
	erb(:start)
	end

 run! if app_file == $0

end



