require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.the_game
  end

  get '/' do
    erb :index
  end

  post '/names' do
    Game.create(params[:player_1])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    @game.round(params[:move])
    redirect '/result'
  end

  get '/result' do
    @result = @game.result
    erb :result
  end

  post '/return' do
    redirect '/'
  end

  run! if app_file == $0

end
