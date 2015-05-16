require 'sinatra/base'

class RPSWeb < Sinatra::Base

  enable :sessions
  set :session_secret, 'spock'

  get '/' do
    'Hello RPSWeb!'
    erb :index
  end

  post '/game' do

    session[:name] = params[:name] if params[:name]
    @name = session[:name]
    erb :game
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
