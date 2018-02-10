require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player_1 = Player.new(params[:player_1])
    @game = Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/move' do
    erb(:move)
  end

  post '/rock' do
    erb(:rock)
  end

  post '/paper' do
    erb(:paper)
  end

  post '/scissors' do
    erb(:scissors)
  end

  run! if app_file == $0

end
