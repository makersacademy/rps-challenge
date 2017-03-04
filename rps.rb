require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/bot'

class RPS < Sinatra::Base
  set :sessions, true

  get '/' do
    erb :index
  end

  post '/names' do
    @player2 = params[:player2] == 'bot' ? Bot.new : Player.new(params[:name_2])
    @game = Game.create(Player.new(params[:name_1]), @player2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.object
    erb :play
  end

  post '/selection' do
    @game = Game.object
    @game.current_player.selected(params[:selection])
    @game.switch
    redirect '/play'
  end

   run if app_file == $0

end
