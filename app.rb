require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  set :session_secret, 'super secret'

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(Player.new(params[:name]))

    redirect to('/choose-move')
  end

  get '/choose-move' do
    erb(:choose_move)
  end

  post '/move' do
    @game.p1.make_move(params[:p1_move])
    @game.p2.make_move('n/a')

    redirect to('/result')
  end

  get '/result' do
    @result = @game.play

    erb(:result)
  end

  run! if app_file == $0
end


