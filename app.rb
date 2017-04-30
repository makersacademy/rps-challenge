require 'sinatra/base'

class Rockpaperscissors <  Sinatra::Base

  get '/' do
    erb :index
  end

  post '/playername' do
    @player_1_name = params[:player_1_name]
    erb :play
  end
end
