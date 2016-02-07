require 'sinatra/base'
require './lib/game'

class MyApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    $game = Game.new
    erb :play
  end

 post '/option' do
  session[:rock] = params[:rock]
  session[:paper] = params[:paper]
  session[:scissors] = params[:scissors]
  redirect '/result'
 end

 get '/result' do
   @rock = session[:rock]
   @paper = session[:paper]
   @scissors = session[:scissors]
   $game.set_option
   @option = @rock || @paper || @scissors
   erb :result
 end

 run! if app_file == $0
end
