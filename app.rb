require 'sinatra'
require 'shotgun'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:names)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb(:game)
  end

  run! if app_file == $PROGRAM_NAME

end
