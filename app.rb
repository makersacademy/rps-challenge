require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/register_names' do
    $player1 = params[:player_1_name]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
