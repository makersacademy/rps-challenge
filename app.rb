require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/decision'
require './lib/computer'

class Rps < Sinatra::Base
  set :sessions, true
  enable :sessions
  set :public_folder, File.dirname(__FILE__) + '/'

  @game = Game.new(:steph, Computer.new)

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
    Rps.game.player.assign_choice((params['choice']).downcase.to_sym)
    redirect to('/result')
  end

  get '/result' do
    erb Decision.result(Rps.game.player.selection, Rps.game.computer.selection)
  end

  get '/playagain' do
    Rps.game.computer.reselect
    redirect to('/play')
  end

end
