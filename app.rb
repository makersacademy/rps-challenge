require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissor < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb(:index)
  end

  get '/names' do
    session[:player_name] = params[:PlayerName]
    erb(:names)
  end

  get '/start_game' do
    erb(:start_game)
  end

  get '/results' do
    @move = params[:move]
    @player_name = session[:player_name]
    erb(:results)
  end

  run! if app_file == $0
end
