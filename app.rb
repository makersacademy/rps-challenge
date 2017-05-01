require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/single_player' do
    erb :single_player
  end

  get '/multi_player' do
    erb :multi_player
  end

  post '/playernames' do
    $player_1 = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    erb :play
  end

  run! if app_file == $0
end
