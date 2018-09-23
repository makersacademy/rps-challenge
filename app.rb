require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    computer = Player.new('Computer')
    Game.create(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @game.reset_choices
    erb(:play)
  end

  post '/choice' do
    game = Game.instance
    game.player.choose(params[:choice].to_sym)
    game.computer.choose(:random) if game.computer.choice.nil?
    redirect '/round'
  end

  get '/round' do
    @game = Game.instance
    erb(:round)
  end

  run! if app_file == $0
end
