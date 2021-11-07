require 'sinatra/base' 
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do # forgot this step
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/play' do
    # p params
    @player_name = params[:name]
    erb :play
  end
  
  run! if app_file == $0
end
