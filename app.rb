require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/bot.rb'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :start
  end

  post '/name' do
    player = Player.new(params[:name])
    bot = Bot.new
    @game = Game.create(player, bot)
    redirect '/play'
  end

  get '/play' do
    @game.player.name
    erb :play
  end

  post '/move' do
    @game.player.selection(params[:move])
    redirect '/result'
  end

  get '/result' do
    @game_winner = @game.winner
    @game_moves = @game.print_moves
    erb :result
  end

end
