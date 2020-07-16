require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    player = Player.new(params[:player])
    computer = Computer.new('Computer')
    session[:game] = Game.new(player, computer)
    redirect '/play'
  end

  before do
    @game = session[:game]
  end

  get '/play' do
    erb(:play)
  end

  post '/result' do
    @game.player.move(params[:move])
    redirect '/result'
  end

  get '/result' do
    @game.who_wins
    erb(:result)
  end

  run! if app_file == $0
end
