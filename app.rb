require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = params[:player_name]
    session[:name] = @player_name
    erb(:play)
  end

  get '/play-rps' do
    @player_name = session[:name]
    erb(:play_rps)
  end

  post '/move' do
    @move = params[:move]
    @game = Game.new(@move)
    erb(:result)
  end

end
