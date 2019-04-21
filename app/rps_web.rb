require 'sinatra/base'
require_relative '../lib/player'
require_relative '../lib/weapon'

class RPSWeb < Sinatra::Base

  before do
    @player = Player.instance
    @weapon = Weapon.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player = Player.create(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapon' do
    @weapon = Weapon.create(params[:weapon])
    redirect '/outcome'
  end

  get '/outcome' do
    erb :outcome
  end

end
