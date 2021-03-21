require 'sinatra'
require './lib/opponent.rb'
require './lib/turn_result.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @turn_result = Turn_Result.new
    @player_1_name = session[:player_1_name]
    @weapon = session[:weapon]
    @pc_weapon = session[:pc_weapon]
    erb(:play)
  end

  post '/play' do
    session[:weapon] = params[:weapon]
      session[:pc_weapon] = Opponent.new.random_weapon
    redirect '/play'
  end
end
