require 'sinatra/base'
require './lib/game.rb'
require './lib/opponent.rb'
require './lib/player.rb'
class Rps < Sinatra::Base
  enable :sessions


get '/' do
  erb :index
end


post '/name' do
  @name = params[:name]
  session[:name]= params[:name]
  erb:play
end

get '/result' do
  @name=session[:name]
  @player_option=params[:shape]
  @player=Player.new(@name,@player_option)
  @opponent=Opponent.new.shape
  @game=Game.new(@player,@opponent)

erb :result
end

end
