require 'sinatra/base'
require './lib/rps'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  before do
    @game = RPS.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = RPS.create(player)
    redirect '/choose'
  end

  get '/choose' do
    erb :choose
  end

  post '/check' do
    @game.player_choose(params[:weapon])
    @game.multiplayer ? (redirect '/player2choose') : (redirect '/result')
  end

  get '/player2choose' do
    erb :player2choose
  end

  post '/checkplayer2' do
    @game.player2_choose(params[:weapon])
    redirect '/result'
  end

  get '/result' do
    erb @game.result
  end

  get '/multiplayer' do
    erb :multiplayer
  end

  post '/names' do
    player = Player.new(params[:name])
    player2 = Player.new(params[:name2])
    @game = RPS.create(player)
    @game.player_2(player2)
    @game.switch_to_multiplayer
    redirect '/choose'
  end

  run! if app_file == $0
end
