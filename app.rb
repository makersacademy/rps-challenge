require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/computer'
require_relative 'lib/play'
require_relative 'lib/player'

class Game < Sinatra::Base
  
  get '/' do
    # @player = params[:player_choice]
    # @computer = params[:computer_choice]
    erb :index
  end

  post '/name' do
    #  name
    redirect to '/game'
  end

  get '/game' do
    #  name vs computer
    erb :game
  end

  post '/game' do
    redirect to '/result'
  end

  get '/result' do
    erb :result
  end

end