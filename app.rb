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

  get '/single' do
    erb :index_single
  end

  get '/multi' do
    erb :index_multi
  end

  post '/start-single' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Computer.new
    @game = Game.create(player_1, player_2)
    redirect '/weapon-choice'
  end

  post '/start-multi' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/weapon-choice'
  end

  get '/weapon-choice' do
    @link = '/play'
    erb :weapon_choice
  end

  post '/play' do
    @game.player_1.weapon_choice(params[:weapon])
    redirect '/check-results' if @game.player_2.is_a? Computer
    redirect '/p2-weapon'
  end

  get '/p2-weapon' do
    @link = '/play2'
    erb :weapon_choice
  end

  post '/play2' do
    @game.player_2.weapon_choice(params[:weapon])
    redirect '/check-results'
  end

  get '/check-results' do
    @game.player_2.weapon_choice if @game.player_2.is_a? Computer
    @game.result
    redirect '/result'
  end

  get '/result' do
    @p1_pic = "images/#{@game.player_1.weapon}.jpg"
    @p2_pic = "images/#{@game.player_2.weapon}.jpg"
    erb :result
  end

  post '/next' do
    redirect '/champion' if @game.p1_score >= 3 || @game.p2_score >= 3
    redirect '/weapon-choice'
  end

  get '/champion' do
    erb :champion
  end
end
