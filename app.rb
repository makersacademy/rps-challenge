require 'sinatra/base'
require 'shotgun'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/register' do
    @game = Game.create(Player.new(params[:name]), Computer.new)
    redirect '/game'
  end

  before do
    @game = Game.instance
  end

  get '/game' do
    erb(:game)
  end

  post '/play' do
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0

end
