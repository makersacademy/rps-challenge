require 'sinatra'
require './lib/player.rb'
require './lib/play.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Play.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player])
    @game = Play.create(player)
    redirect '/choice'
  end

  get '/choice' do
    erb :play
  end

  get '/result' do
    erb @game.play(params[:choice])
  end

  run! if app_file == $0
end
