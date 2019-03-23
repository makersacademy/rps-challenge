require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/choice' do
    @player = session[:player]
    @player.choice(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @player = session[:player]
    @computer = Computer.new
    erb :result
  end

  run! if app_file == $0
end
