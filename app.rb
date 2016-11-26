require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base
  get '/' do
    erb(:names_form)
  end

  post '/player_name' do
    Game.create(Player.new(params["Player1"]))
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  post '/rock' do
    erb(:rock)
    redirect '/play'
  end

  post '/paper' do
    erb(:paper)
    redirect '/play'
  end

  post '/scissors' do
    erb(:scissors)
    redirect '/play'
  end

  run! if app_file == $0
end
