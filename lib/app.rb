require 'sinatra/base'
require_relative 'views/player'
require_relative 'views/game'


class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, "My session secret"

  get '/' do
    erb(:start)
  end

  post '/who' do
    Game.store = Game.new(params[:player1])
  end

  get'/play' do
    "hello world"
    # @game = Game.store
    # erb(:player_1_select)
  end

  get '/result' do
  @game = Game.store
  @game.attack(@game.not_turn)
  erb(:results)
  end



run! if app_file == $0
end
