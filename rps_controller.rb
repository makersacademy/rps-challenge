require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    $player_name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name
    erb :play
  end

  run! if app_file == $0
end
