require 'sinatra/base'
require './lib/game_logic'
require './lib/computer'


class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/name'
  end

  get '/name' do
    @name = session[:name]
    erb :name
  end

  post '/results' do
    session[:choice] = params[:choice]
    redirect '/results'
  end

  get '/results' do
    @player_1 = session[:choice]
    @computer = Computer.new.choice
    @results = Game.new(player_1: @player_1, computer: @computer).winner
    erb :results
  end

  run! if app_file == $0

end
