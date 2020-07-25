require 'sinatra/base'

class Rps < Sinatra::base

  get '/' do
    erb :index
  end

  post '/name' do
    player = player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/select' do
    
  end

  run! if app_file == $0
end