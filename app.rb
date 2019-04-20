require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  get "/names" do
    @player_name = params[:player_name]
    erb :play
  end

  run if app_file == $0
end
