require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissor < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb(:index)
  end

  get '/names' do
    @player_name = params[:PlayerName]
    erb(:names)
  end

  get '/start_game' do
    erb(:start_game)
  end

  run! if app_file == $0
end
