require 'sinatra/base'
# require_relative './lib/player'
# require_relative './lib/game'

class RPS < Sinatra::Base
enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_one] = params[:name_one]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_one]
    # @player = Player.new(session[:player_one])
    erb(:play)
  end

  post '/move' do
    session[:move] = params[:move]
    # @move = @player.make_move(session[:move]) ?or?
    # @move = @player.make_move(:move)
    redirect '/result'
  end

  get '/result' do
    @player = session[:player_one]
    # ? needs to reference Player one from above ?
    @move = session[:move]
    erb(:result)
  end

end
