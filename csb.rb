require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/ash'
require_relative 'lib/game'

class CSB < Sinatra::Base

  enable :sessions

  before do
    @player = Player.read
    @ash = Ash.read
    @game = Game.read
  end

  get '/' do
    erb :index
  end

  post '/setup' do
    @player = Player.create(params[:player_name])
    @ash = Ash.create
    @game = Game.create
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/input' do
    if    params[:charmander]
       @player.pokemon = params[:charmander]
    elsif params[:squirtle]
       @player.pokemon = params[:squirtle]
    elsif params[:bulbasaur]
       @player.pokemon = params[:bulbasaur]
    end
    @ash.pokemon_selector
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
