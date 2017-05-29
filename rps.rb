require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'mind your business'

  get '/' do
    'RPS!'
    erb :index
  end

  post '/name' do
    @player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = @player.name
    erb :play
  end

  post '/weapons' do
    session[:weapon] = params[:weapon]
    redirect '/result'
  end

  get '/result' do
    @weapon = session[:weapon]
    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
