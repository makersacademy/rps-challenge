require 'sinatra/base'

class RPSWeb < Sinatra::Base
  
  get '/' do
    erb :sign_in_page
  end
  
  post '/play' do
   p @player_1 = params['player_1']
   erb :game
  end
  
  get '/game' do
    @player_1 = params['player_1']
    erb :game
  end
  
  run! if app_file == $0
end