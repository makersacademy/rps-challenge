require 'sinatra/base'
require_relative 'lib/player'

class RPS < Sinatra::Base

  enable :sessions

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

  post '/game' do
    @player = $player
    $choice = @player.choose(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @choice = $choice
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
