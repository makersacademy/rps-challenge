require 'sinatra/base'
require_relative 'lib/player'

class CSB < Sinatra::Base

  enable :sessions

  before do
    @player = Player.read
  end

  get '/' do
    erb :index
  end

  post '/setup' do
    @player = Player.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
