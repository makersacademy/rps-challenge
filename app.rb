require 'sinatra/base'
require_relative './lib/game.rb'

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/gamemode' do
    session[:gamemode] = params[:mode]
    redirect '/getnames'
  end

  get '/getnames' do
    erb(:names)
  end

  post '/setnames' do
    @game = Game.start_game(params[:player_1])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end
end
