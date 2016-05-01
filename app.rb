require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb :start
  end

  get '/name' do
    erb :name
  end

  post '/set_name' do
    $player_name = params[:player_name]
    redirect '/choose_weapon'
  end

  get '/choose_weapon' do
    @player_name = $player_name
    erb :choose
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
