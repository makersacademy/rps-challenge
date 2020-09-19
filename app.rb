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
    shake = "rock"
    if @game.again? #checks that it is multiplayer & player2 has not gone yet.
      go_again(shake)
    elsif @game.multi? #if p1 has been, but not p2
      both_gone(shake)
    else #anything else means it must be single player.
      sp_only(shake)
    end
  end

  get '/paper' do
    shake = "paper"
    if @game.again?
      go_again(shake)
    elsif @game.multi?
      both_gone(shake)
    else
      sp_only(shake)
    end
  end

  get '/scissors' do
    shake = "scissors"
    if @game.again?
      go_again(shake)
    elsif @game.multi?
      both_gone(shake)
    else
      sp_only(shake)
    end
  end

  get '/result' do
    erb :result
  end

  get '/MPresult' do
    erb :mpresult
  end

# controller methods
  def go_again(shake)
    @game.active_player.shake(shake)
    @game.switch_players(@game.player_one, @game.player_two)
    redirect '/rps'
  end

  def both_gone(shake)
    @game.active_player.shake(shake)
    redirect '/MPresult'
  end

  def sp_only(shake)
    @game.active_player.shake(shake)
    redirect '/result'
  end

end
