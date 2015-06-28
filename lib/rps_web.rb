require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RPSWeb < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    erb :index
  end

  post '/setup_holding' do
    
    if $temporary_name_holder == nil
      $temporary_name_holder = params[:name]
      session[:name] = 'player_1'
    else
      session[:name] = 'player_2'
      player_1 = Player.new($temporary_name_holder)
      player_2 = Player.new(params[:name])
      $game = Game.new(player_1, player_2)
      $temporary_name_holder = nil
      redirect '/play_game'
    end

    erb :setup_holding
  end

  get '/setup_holding' do
    
    if $game != nil
      redirect '/play_game'
    else
      erb :setup_holding
    end
  end

  get '/play_game' do
    
    erb :play_game
  end

  post '/play_game' do
    
    $game.send(session[:name]).select(params[:game_select].downcase.to_sym)
    if $game.player_1.total_selections == $game.player_2.total_selections
      $message = $game.play
    else
      redirect '/play_game_holding'
    end

    erb :play_game
  end

  get '/play_game_holding' do
    @opponent = 'player_1' if session[:name] == 'player_2'
    @opponent = 'player_2' if session[:name] == 'player_1'
    redirect '/play_game' if $game.send(session[:name]).total_selections <= $game.send(@opponent).total_selections
    erb :play_game_holding
  end

  run! if app_file == $0
end
