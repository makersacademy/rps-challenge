require 'sinatra/base'
require_relative 'lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @name = Game.instance.name
    erb :play
  end

  post '/choice' do
    p params[:Rock]
    p params[:Paper]
  end

  run! if app_file == $0

end
