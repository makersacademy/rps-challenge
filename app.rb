require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/choice' do
    @game = Game.instance
    @game.player.choice = params[:choice]
    @game.computer_move
    redirect '/draw' if @game.draw?
    @game.win? ? redirect '/win' : redirect '/lose'
  end

  # start the server if  ruby file executed directly
  run! if app_file == $0
end
