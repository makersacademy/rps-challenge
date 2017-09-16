require 'sinatra'
require './lib/player.rb'

class RPSWeb < Sinatra::Application

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/name' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    erb :play
  end

  post '/weapons' do
    @player_1 = $player_1
    @player_1.weapon_choice(params[:weapon])
    redirect '/result'
  end

  get '/result' do
    @player_1 = $player_1
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
