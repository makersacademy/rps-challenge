require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    $player_1 = params[:player_1]
    $player_2 = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :play
  end

end
