require 'sinatra/base'

class Rps << Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    $game = Game.new(player)
    redirect :play
  end

  get '/play' do
    @name = $game.player_name
    erb :play
  end

  post '/decide' do
    $game.decision(params[:selection])
    redirect :result
  end

  run! if app_file == $0
end
