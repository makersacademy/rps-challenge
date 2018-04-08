require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  get '/finish' do
    erb :play
  end

  get '/first_shot' do
    @game.first_turn
    erb :first_shot
  end

  get '/second_shot' do
    @game.switch_turn
    erb :second_shot
  end

  get '/choice_options' do
    erb :choice_options
  end

  post '/submit_choice' do
    selected_choice = params[:choice]
    @game.active_player.select_option(selected_choice)
    if @game.all_players_selected_choice?
      redirect('/finish')
    else
      redirect('/second_shot')
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
