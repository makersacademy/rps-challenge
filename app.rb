require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/name' do
    erb :name
  end

  post '/set_name' do
    $player_name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
