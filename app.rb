require_relative './lib/game'
require_relative './lib/player'

require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player1 = Player.new(params[:name])
    player2 = Player.new(params[:name2])
    @game = Game.generate(player1, player2)
    redirect '/' if params[:name].empty?
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game.current_player.choose(params[:choice])
    @game.change_current_player(@game.player2.type)
    redirect '/play' if @game.player2.weapon.nil? 
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  get '/play-again' do
    @game.player2.generate_weapon
    erb(:play)
  end

  run! if app_file == $0
end
