require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  # start the server if  ruby file executed directly
  run! if app_file == $0
end
