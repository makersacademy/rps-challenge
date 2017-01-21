require 'sinatra/base'
require 'sinatra'

require 'player'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  post '/choice' do
    redirect '/game_over'
  end

  get '/result' do
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
