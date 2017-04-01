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
    Rps.game.assign(Player.new(params['name']))
    redirect to('/play')
  end

  get '/play' do
    erb :play
  end

  post '/compare' do
    Rps.game.player.assign_choice(params['choice'])
    redirect to('/winlose')
  end

  get '/winlose' do
    erb :winlose
  end

  get '/playagain' do
    Rps.game.reselect
    redirect to('/play')
  end

end
