require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = params[:player1]
    redirect '/game'
  end

  get '/game' do
    @player1 = $player_1
    erb(:game)
  end

  run! if app_file == $0
end
