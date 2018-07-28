require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    erb(:play)
  end

  get '/battle' do
    erb(:battle)
  end

  get '/rock' do
    @game = Game.new("rock")
    #game.new(rock
    erb(:rock)
  end

  get '/paper' do
    @game = Game.new("paper")
    erb(:paper)
  end

  get '/scissors' do
    @game = Game.new("scissors")
    erb(:scissors)
  end

  run! if app_file == $0
end
