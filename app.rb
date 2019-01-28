require 'sinatra/base'
require "./models/computer"
require "./models/player"
require "./models/game"

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/playername' do
    session[:name] = params[:name]

    redirect '/playgame'
  end

  get '/playgame' do
    @name = session[:name]
    erb(:play)
  end

  post '/battle' do
    session[:player] = Player.new(params[:weapon])
    game = Game.new(session[:player])
    game.result
    session[:result] = game.winner
    redirect '/result'
  end

   get '/result' do
     @player = session[:player]
     @winner = session[:result]
     erb(:result)
   end


  run if app_file == $0

end
