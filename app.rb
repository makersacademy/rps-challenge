require_relative './lib/player'
require_relative './lib/game'
require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.generate(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/choice' do
    @game = Game.instance
    p params
    @game.player.choose(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    erb(:result)
  end

  run! if app_file == $0
end
