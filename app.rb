require 'sinatra/base'
require 'sinatra'
require './lib/player'
require './lib/game'

set :public_folder, File.dirname(__FILE__)

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    Game.save_instance(Player.new(params[:player]))
    redirect('/game')
  end

  before do
    @game = Game.instance
  end

  get '/game' do
    erb :game
  end

end
