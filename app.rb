require 'sinatra/base'
require_relative './lib/player.rb'

class RockPaperScissors < Sinatra::Base

  before do
    @player = Player.instance
  end

  get '/' do
    erb :index
  end

  post '/form' do
    @player = Player.create(params[:name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

end
