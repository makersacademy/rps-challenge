require "sinatra"
require "./lib/game"

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
  $name = params[:name]
   p 
    redirect '/play'
  end

  get '/play' do
    $game = Game.new($name)
    @game = $game
    erb :play
  end 

  post '/result' do
    @game = $game
    @game.item = params[:item]
    erb :result
  end

 



  run! if app_file == 0
end