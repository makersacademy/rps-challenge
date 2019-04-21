require 'sinatra/base'
require_relative '../lib/player'

class RPSWeb < Sinatra::Base

  before do
    @player = Player.instance 
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

end
