require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    @player1 = Player.new(params[:player1_name])
    erb :play
  end

  get '/result' do
    @player1_move = params[:player1_move]
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
