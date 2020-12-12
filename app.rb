require 'sinatra/base'
require './lib/game.rb'

class Rps < Sinatra::Base
  set :sessions, true

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/start'
  end

  get '/start' do
    @name = session[:player]
    erb(:play)
  end

  post '/move' do
    # print "params player_move: "
    # puts "#{params[:player_move]}"
    session[:player_move] = params[:player_move]
    redirect '/playing'
  end

  get '/playing' do
    @player_move = session[:player_move]
    erb(:playing)
  end

end
