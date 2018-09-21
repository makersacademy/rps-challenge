require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/game' do
    session[:player_name] = params[:name]
    @player_name = session[:player_name]
    erb(:game)
  end

  get '/rock' do
    @player_name = session[:player_name]
    @computer_move = Computer.new.move
    erb(:results)
  end


end
