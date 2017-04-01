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
    player_1 = Player.new(params[:player_1], "human")
    player_2 = Player.new
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/orange-throat' do
    @game.human.choose_orange
    redirect '/result'
  end
  
  post '/blue-throat' do
    @game.human.choose_blue
    redirect '/result'
  end

  post '/yellow-throat' do
    @game.human.choose_yellow
    redirect '/result'
  end

  get '/result' do
    @game.comp.choose_rand
    erb :result
  end

  run! if app_file == $0

end
