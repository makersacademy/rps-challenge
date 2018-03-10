require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/register_names' do
    $player1 = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @move = $move
    
    erb :play
  end

  post '/move' do
    $move = params[:submit];
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
