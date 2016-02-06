require 'sinatra/base'
require './lib/player'
require './lib/game'


class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :enter_game
  end

  post '/name' do
    session['Name'] = params['Name']
    redirect '/choose_opponent'
  end

  get '/choose_opponent' do
    @name = session['Name']
    erb :choose_opponent
  end

  post '/choose_opponent' do
    session['Play_mode'] = params['Play_mode']
    if session['Play_mode'] == 'Computer'
      redirect '/play'
    else
      redirect '/enter_player_name'
    end
  end

  get '/enter_player_name' do
    erb :enter_player_name
  end

  post '/enter_player_name' do
    session['other_player_name'] = params['Name']
    redirect '/play'
  end

  get '/play' do
    @name = session['Name']
    @play_mode = session['Play_mode']
    erb :play_game
  end

  post '/pick_option' do
    @play_mode = session['Play_mode']
    session['choice'] = params["choice"]
    @name = session['Name']
    @choice = session['choice']
    $player_one = Player.new(@choice, @name)
    if @play_mode == 'Computer'
      redirect '/opponent_choice'
    else
      redirect '/other_player_choice'
    end
  end

  get '/other_player_choice' do
    @play_mode = session['Play_mode']
    @name = session['other_player_name']
    erb :other_player_choice
  end

  post '/other_player_choice' do
    @choice = params["choice"]
    @name = session['other_player_name']
    player_2 = Player.new(@choice, @name)
    $game = Game.new($player_one, player_2)
    $game.fight
    redirect '/result'
  end

  get '/opponent_choice' do
    @choice = session['choice']
    $game = Game.new($player_one, Player.new)
    $game.fight
    erb :opponent_choice
  end

  post '/opponent_choice' do
    redirect :result
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
