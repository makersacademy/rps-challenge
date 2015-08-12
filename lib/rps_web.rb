require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  @@game = Game.new

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    if @@game.player1
      session[:name2] = params[:name]
      @@game.set_player Player.new params[:name]
      redirect '/game'
    else
      session[:name1] = params[:name]
      @@game.set_player Player.new params[:name]
      redirect '/'
    end
  end

  get '/game' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb :game
  end

  post '/result' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    @choice1 = params[:choice1].to_sym
    @choice2 = params[:choice2].to_sym
    @outcome = @@game.play @choice1, @choice2
    erb :result
  end

 get '/result' do
  erb :result
 end

  set :views, Proc.new { File.join(root, "..", "views") }

end