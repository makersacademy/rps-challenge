require 'sinatra/base'
require './lib/game'
require './lib/player'


class Mama < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :welcome
  end

  post '/entry' do
    player1 = Player.new(params[:player1])
    @game = Game.create(player1)
    redirect '/game'
  end

  get '/game' do
    erb :ready
  end

  get '/rps' do
    erb :gameplay
  end

  get '/result' do
    erb :result
  end

end
