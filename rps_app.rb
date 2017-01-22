require 'sinatra/base'
require './lib/game'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    session[:game] = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb :play
  end

  get '/rock' do
    p "I am in the rock method", params[:choice]
    @game = session[:game]
    @game.play(:rock)
    erb :results
  end

  get '/scissors' do
    p "I am in the scissors method", params[:choice]
    @game = session[:game]
    @game.play(:scissors)
    erb :results
  end

  get '/paper' do
      p "I am in the paper method", params[:choice]
    @game = session[:game]
    @game.play(:paper)
    erb :results
  end


  run! if app_file == $0
end
