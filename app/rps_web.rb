require 'sinatra/base'
# require './lib/player'
# require './lib/game'

class RPSWeb < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/welcome' do
    @marketeer = params[:marketeer_name]
    erb :welcome
  end



  # start the server if ruby file executed directly
  run! if app_file == $0

end
