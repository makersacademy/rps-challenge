require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  set :sessions, true
  enable :sessions
  set :public_folder, File.dirname(__FILE__) + '/'

  @game = Game.new(:steph)

  def self.game
    @game
  end

  get '/' do
    erb :index
  end

  post '/initiate' do
    Rps.game.assign(Player.new(params['name'])
    redirect to('/play')
  end

  get '/play' do
    erb :play
  end

end
