require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
