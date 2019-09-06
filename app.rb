require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  p "came in here"
  get '/' do
    erb(:index)
  end
  post '/match' do
    @player_name = params[:Player1]
    "Welcome " + @player_name
  end
end
