require 'sinatra/base'
# require 'shotgun'
require_relative './lib/game.rb'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/rock' do
    @game.rock
    @game.comp_select
    redirect '/result'
  end

  post '/paper' do
    @game.paper
    @game.comp_select
    redirect '/result'
  end

  post '/scissors' do
    @game.scissors
    @game.comp_select
    redirect '/result'
  end

  get '/result' do
    erb :result
  end


  run! if app_file == $0
end
