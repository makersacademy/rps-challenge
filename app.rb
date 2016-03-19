require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
	enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
  	@player_name = params[:player_name]
  	redirect to('/play')
  end

  get '/play' do
  	erb(:play)
  end
end
