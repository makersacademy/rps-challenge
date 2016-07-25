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
    p "+++++++++++++++++++++++"
    p @game.player
    erb(:play)
  end

  # post '/choice' do
  #   @game = Game.instance
  #   @game.computer_move
  #   case @game.win?
  #   when true
  #     redirect '/win'
  #   when false
  #     redirect '/lose'
  #   else
  #     redirect '/draw'
  #   end
  # end

  # start the server if  ruby file executed directly
  run! if app_file == $0
end
