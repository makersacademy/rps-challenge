require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post "/register" do
    @player_name = params[:player_name]
    erb :game
  end

  run! if app_file == $0

end
