require 'sinatra'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/one-player/enter-name' do
    @player = params[:player_name]
    redirect '/one-player/game'
  end

  post 'two-player/enter-names' do
    @player_one = params[:player_one]
    @player_two = params[:player_two]
    redirect '/two-player/game'
  end

  get 'one-player/game' do
    erb(:one_player_game)
  end

  get 'two-player/game' do
    erb(:two_player_game)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
