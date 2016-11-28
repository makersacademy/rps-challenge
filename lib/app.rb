require 'sinatra/base'
require_relative 'game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player,Computer.new)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game.player_1.make_choice(params[:choice])
    @game.player_2.make_choice
    redirect 'result'
  end

  get '/result' do
    @game = Game.instance
    erb @game.result
  end

  run! if app_file == $0

end
