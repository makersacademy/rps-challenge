require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/version'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/infastructure' do
    "Testing Infastructure"
  end

  get '/rules' do
    erb(:rules)
  end

  get '/' do
    erb(:version)
  end

  post '/opponent' do
    redirect Version.new.version_path(params[:opponent])
  end

  get '/one_player' do
    erb(:one_player)
  end

  get '/two_player' do
    erb(:two_player)
  end

  post '/name' do
    @game = Game.create(Player.new(params[:name]))
    redirect '/play'
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/two_play'
  end

  get '/play' do
    erb(:play)
  end

  get '/two_play' do
    erb(:two_play)
  end

  post '/store_choice' do
    redirect @game.store_choice(params[:choice].downcase)
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
    @player_2_choice = params[:choice].downcase
    @result = @game.two_player_result(@game.player_1_choice, @player_2_choice)
    erb(:two_player_result)
  end
end
