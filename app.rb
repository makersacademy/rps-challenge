require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/choose_opponent' do
    redirect params[:opponent]
  end

  get '/one_player' do
    erb(:one_player)
  end

  get '/two_player' do
    erb(:two_player)
  end

  post '/name' do
    @game = Game.create([Player.new(params[:name])])
    redirect '/play'
  end

  post '/names' do
    @game = Game.create([Player.new(params[:player1]), Player.new(params[:player2])])
    redirect '/two_play'
  end

  get '/play' do
    erb(:play)
  end

  get '/two_play' do
    erb(:two_play)
  end

  enable :sessions

  post '/player_1_choice' do
    session[:player_1_choice] = params[:choice].downcase
    redirect '/two_play_too'
  end

  get '/two_play_too' do
    erb(:two_play_too)
  end
  
  post '/result' do
    @player_choice = params[:choice].downcase
    @result = @game.result(@player_choice)
    erb(:result)
  end

  post '/two_player_result' do
    @player_1_choice = session[:player_1_choice]
    @player_2_choice = params[:player_2_choice].downcase
    @result = @game.two_player_result(@player_1_choice, @player_2_choice)
    erb(:two_player_result)
  end

  get '/rules' do
    erb(:rules)
  end

  run! if app_file == $0
end
