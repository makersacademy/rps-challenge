require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/resolver'

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

  post '/continue' do
    player_1 = @game.player_1
    player_2 = @game.player_2
    player_1.reset_choice
    player_2.reset_choice
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
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

  get '/draw' do
    erb :draw
  end

  get '/finish' do
    resolver = Resolver.new
    result = resolver.resolve(@game.player_1.choice, @game.player_2.choice)
    if result == Resolver::DRAW
      redirect('/draw')
    elsif result == Resolver::WIN
      @winner = @game.player_1
    elsif result == Resolver::LOOSE
      @winner = @game.player_2
    end
    erb :finish
  end

  run! if app_file == $0
end
