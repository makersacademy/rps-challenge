require 'sinatra/base'
require_relative './lib/opponent'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/single' do
    erb(:single)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('/play')
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  post '/play' do
    session[:player_choice] = params[:player_choice].downcase.to_sym
    redirect('/outcome')
  end

  get '/outcome' do
    @game = Game.new(session[:player_choice], Opponent.new.choice.downcase.to_sym)
    erb(:outcome)
  end

  get '/multiplayer' do
    erb(:multiplayer)
  end

  post '/multi_names' do
    session[:name_1] = params[:name_1]
    session[:name_2] = params[:name_2]
    redirect('/multi_play')
  end

  get '/multi_play' do
    @name_1 = session[:name_1]
    @name_2 = session[:name_2]
    erb(:multi_play)
  end

  post '/player_1_choice' do
    session[:player_1_choice] = params[:player_1_choice].downcase.to_sym
    redirect('/player_2_choice')
  end

  get '/player_2_choice' do
    @name_1 = session[:name_1]
    @name_2 = session[:name_2]
    erb(:multi_play_2)
  end

  post '/player_2_choice' do
    session[:player_2_choice] = params[:player_2_choice].downcase.to_sym
    redirect('/multi_outcome')
  end

  get '/multi_outcome' do
    @player_1 = Player.new(session[:name_1], session[:player_1_choice])
    @player_2 = Player.new(session[:name_2], session[:player_2_choice])
    @game = Game.new(@player_1.choice, @player_2.choice)
    erb(:multi_outcome)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
