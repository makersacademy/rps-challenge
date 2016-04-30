require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player_name = params[:player_name]
    redirect '/select-weapon'
  end

  get '/select-weapon' do
    @player_name = $player_name
    erb :select_weapon
  end

  # start the server if ruby files executed directly
  run! if app_file == $0
end