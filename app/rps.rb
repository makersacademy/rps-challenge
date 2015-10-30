require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb (:register)
  end

  get '/play' do
    $player_name = params[:name]
    @player_name = $player_name
    erb :play
  end

  post '/go' do
    $hand = params[:hand]
    redirect '/go'
  end

  get '/go' do
    @player_name = $player_name
    @hand = $hand
    erb :go
  end
end
