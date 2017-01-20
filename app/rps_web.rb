require 'sinatra/base'
# require './lib/player'
# require './lib/game'

class RPSWeb < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = params[:marketeer_name]
    redirect '/play'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0

end
