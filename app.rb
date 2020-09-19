require "sinatra"
require "./lib/game"

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(params[:name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @game.computer_play = Computer.play
    erb :play
  end 

  post '/result' do
    @game = Game.instance
    @game.item = params[:item]
    erb :result
  end
  
  run! if app_file == 0
end
