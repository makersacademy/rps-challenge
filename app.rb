require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :game_type
  end

  get '/no_players' do
    erb :no_players
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
