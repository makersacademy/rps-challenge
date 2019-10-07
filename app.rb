require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'
require './lib/rules'

class RPSWeb < Sinatra::Base
  enable :sesisons

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  get '/names' do
    erb params[:no_players].downcase.tr(' ', '_').to_sym
  end

  post '/start' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name]) if params[:player_2_name]
    player_2 = Computer.new unless params[:player_2_name]
    @game = Game.create(player_1, player_2)
    redirect '/weapon-choice'
  end

  get '/weapon-choice' do
    @link = '/play'
    erb :weapon_choice
  end

  post '/play' do
    @game.p1_choice(params[:weapon])
    redirect @game.computers_move?
  end

  get '/p2-weapon' do
    @link = '/play2'
    erb :weapon_choice
  end

  post '/play2' do
    @game.p2_choice(params[:weapon])
    redirect '/result'
  end

  get '/result' do
    @game.result
    @p1_pic = "images/#{@game.p1_weapon}.jpg"
    @p2_pic = "images/#{@game.p2_weapon}.jpg"
    erb :result
  end

  post '/next' do
    redirect @game.complete?
  end

  get '/champion' do
    erb :champion
  end
end
