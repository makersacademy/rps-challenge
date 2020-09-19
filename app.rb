require 'sinatra'
require_relative './lib/game.rb'
require_relative './lib/player.rb'
require_relative './lib/bot.rb'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :name_form
  end

  post '/play' do
    player = Player.new(params[:name])
    bot = Bot.new
    @game = Game.create(player, bot)
    redirect '/rps'
  end
  
  post '/multiplayer' do
    player1 = Player.new(params[:player_one])
    player2 = Player.new(params[:player_two])
    @game = Game.create(player1, player2)
    redirect '/rps_mp' 
  end

  get '/rps' do
    erb :rps
  end

  get '/rps_mp' do
    erb :rps_mp
  end

  get '/rock' do
    @game.active_player.shake("rock")
    redirect '/result'
  end

  get '/paper' do
    @game.active_player.shake("paper")
    redirect '/result'
  end

  get '/scissors' do
    @game.active_player.shake("scissors")
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

end
