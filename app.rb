require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player_name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name
    erb :play
  end

  # start the server if ruby files executed directly
  run! if app_file == $0
end