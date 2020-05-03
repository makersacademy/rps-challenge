require 'sinatra/base'
require_relative '../lib/game'
require_relative '../lib/data'

class MyRockApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end
  
  post '/user' do
    session[:name] = params[:name]
    MyData.create
    redirect '/rps'
  end

  get '/rps' do
    @data = MyData.instance
    @name = session[:name]
    erb :play
  end
  
  post '/game' do
    session[:rps] = params[:rps]
    redirect '/play'
  end
  
  get '/play' do
    @data = MyData.instance
    @game = Game.new(session[:rps])
    @data.rps_score_results(@game)
    @data.rps_win_records(@game)
    @data.rps_round
    @name = session[:name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end