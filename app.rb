require './lib/game'
require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/single-player' do
    erb(:single_player)
  end

  get '/multi-player' do
    erb(:multi_player)
  end

  post '/single-name' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new
    @game = Game.start_game(player_1, player_2)
    redirect '/play-single'
  end
  post '/multi-player-names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.start_game(player_1, player_2)
    redirect '/play-multi'

  end
  before do
    @game = Game.game
  end

  post '/second-player' do
    @game.player_1.choose_option(params[:option])
    redirect '/second-choice'
  end

  get '/confirmation-multi' do
    @game = Game.game
    @game.player_2.choose_option(params[:option])
    erb(:confirmation_multi)
  end

  get '/second-choice' do
    erb(:second_choice)
  end 

  get '/play-single' do
    erb(:play_single)
  end

  get '/play-multi' do
    erb(:play_multi)
  end

  get '/confirmation-single' do
    @game.player_1.choose_option(params[:option])
    erb(:confirmation_single)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
