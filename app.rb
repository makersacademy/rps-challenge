require 'sinatra'
require "sinatra/reloader" if development?

require './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    session[:player_1] = player_1.name
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb(:play)
  end

  run! if app_file == $0
end
