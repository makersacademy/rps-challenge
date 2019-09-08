require 'sinatra/base'
require './lib/opponent'
require './lib/decide'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  post '/play' do
    @player_hand = params[:hand]
    @opponent_hand = Opponent.new.hand
    @result = Decide.new(@player_hand, @opponent_hand).result
    erb :result
  end

  run! if app_file == $0
end
