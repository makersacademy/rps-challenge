require 'sinatra/base'
require './lib/rps_calculator.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/the-colosseum' do
    session[:user_name] = params[:user_name]
    session[:user_move] = params[:user_move]
    redirect '/result'
  end

  get '/result' do
    @rps = RpsCalculator.new(session[:user_move], session[:user_name])
    @rps.message
    erb :result
  end

  run! if app_file == $0

end
