require 'sinatra/base'

require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_1] = params[:player_1]

    redirect to('/play')
  end

  get '/play' do
    @game = session[:player_1]

    erb(:play)
  end

  post '/playing' do
    session[:rock] = params[:Rock]
    session[:paper] = params[:Paper]
    session[:scissors] = params[:Scissors]

    redirect to('/game')
  end

  get '/game' do
    @game = session[:player_1]

    @rock = session[:rock]
    @paper = session[:paper]
    @scissors = session[:scissors]

    @computer = Computer.new.result
    @result = Game.new(@rock.to_s + @paper.to_s + @scissors.to_s,@computer).result.to_s

    erb(:game)
  end


  run! if app_file == $0
end
