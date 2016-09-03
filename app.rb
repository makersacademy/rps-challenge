require 'sinatra'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    erb(:one_player_game)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
