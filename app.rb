require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  attr_reader :player_1_name

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

# starts the server if ruby file is executed directly
  run if app_file == $0
end
