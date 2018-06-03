require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    $player_name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @name = $player_name
    @game = $game
    erb :play
  end

  post '/play' do
    $option = params[:option]
    redirect '/play'
  end

end
