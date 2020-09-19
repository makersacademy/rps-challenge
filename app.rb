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
    @game.mode = "multi"
    redirect '/rps_mp' 
  end

  get '/rps' do
    erb :rps
  end

  get '/rps_mp' do
    erb :rps_mp
  end

  get '/rock' do
    if @game.again?
      @game.active_player.shake("rock")
      @game.switch_players(@game.player_one, @game.player_two)
      redirect '/rps'
    elsif @game.multi?
      @game.active_player.shake("rock")
      redirect '/MPresult'
    else
      @game.active_player.shake("rock")
      redirect '/result'
    end
  end

  get '/paper' do
    if @game.again?
      @game.active_player.shake("paper")
      @game.switch_players(@game.player_one, @game.player_two)
      redirect '/rps'
    elsif @game.multi?
      @game.active_player.shake("paper")
      redirect '/MPresult'
    else
      @game.active_player.shake("paper")
      redirect '/result'
    end
  end

  get '/scissors' do
    if @game.again?
      @game.active_player.shake("scissors")
      @game.switch_players(@game.player_one, @game.player_two)
      redirect '/rps'
    elsif @game.multi?
      @game.active_player.shake("scissors")
      redirect '/MPresult'
    else
      @game.active_player.shake("scissors")
      redirect '/result'
    end
  end

  get '/result' do
    erb :result
  end

  get '/MPresult' do
    erb :mpresult
  end

end
