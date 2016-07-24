require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_1_name]))
    redirect :select
  end

  get '/select' do
    @game = Game.instance
    p @game
    erb :select
  end

  get '/play' do
    @game = Game.instance
    @game.play(params[:gesture].to_sym) #needs to be params
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end








# if params[:Rock]
#   @game.rock
# elsif params[:Paper]
#   @game.paper
# elsif params[:Scissors]
#   @game.scisors
# elsif params[:Spock]
#   @game.spock
# elsif params[:Lizard]
#   @game.lizard
# end
