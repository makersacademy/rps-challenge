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
    session[:player_1] = Player.new(params[:player_1])
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb(:play)
  end

  post '/make_move' do
    p params
    session[:rps_move] = params[:rps_move]
    redirect '/winner'
  end

  get '/winner' do
    @selection = session[:rps_move]
    p @selection
    erb(:winner)
  end

  run! if app_file == $0
end
