require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    $player_one = Player.new(params[:player_one_name])
    redirect '/play'
  end

  get '/play' do
    @player_one_name = $player_one.name
    erb :play
  end

  get '/result' do
    @player_one_name = $player_one.name
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
