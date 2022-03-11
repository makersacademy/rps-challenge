require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/player-names' do
    @game.new_player(params[:player1_name])
    @game.new_player(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end