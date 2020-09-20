require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(params[:name])

    redirect to('/choose-move')
  end

  get '/choose-move' do
    erb(:choose_move)
  end

  post '/move' do
    session[:result] = @game.play(params[:move])

    redirect to('/result')
  end

  get '/result' do
    erb(:result)
    @result = session[:result]
  end

  run! if app_file == $0
end


