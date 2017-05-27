require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  run! if app_file == $0

end
