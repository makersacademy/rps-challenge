require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/bot'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player' do
    player = Player.new(params[:player])
    bot = Bot.new('Computer')
    $game = Game.new(player, bot)
    redirect '/round'
  end

  get '/round' do
    erb(:round)
  end

  post '/option' do
    $player_option = $game.player.choose_option(params[:option])
    $bot_option = $game.bot.random_option
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0
end
