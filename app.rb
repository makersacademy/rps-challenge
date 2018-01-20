require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    Game.build(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

run! if app_file == $0
end
