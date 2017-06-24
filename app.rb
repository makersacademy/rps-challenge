# lib/app.rb
require 'sinatra/base'
require './lib/player'
require './lib/npc'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
    @npc_weapon = NPC.new.weapon
  end

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

  get '/fist_battle1' do
    erb(:fist_battle1)
  end

  get '/fist_battle2' do
    erb(:fist_battle2)
  end

  get '/fist_battle3' do
    erb(:fist_battle3)
  end

  run! if app_file == $PROGRAM_NAME
end
