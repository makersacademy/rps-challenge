require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions
  
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/player_names' do
    player_1 = Player.new(params[:player_1])
    @game = Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    p1 = params[:choice]
    @game.p1_selection(p1)
    @game.p2_selection
    redirect '/result'
  end
  
  get '/result' do
    erb :result
  end

  run! if app_file == $0

end
