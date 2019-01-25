require './lib/player'
require 'sinatra/base'

class Game < Sinatra::Base

  before do
    @player = Player.instance
  end

  get '/' do
    erb :entry_form
  end

  post '/name' do
    Player.create(params[:name])
    redirect '/play'
  end

  get '/play' do
    erb :options
  end
end
