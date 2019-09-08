require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end
  post '/match' do
    @player_name = params[:Player1]
    erb(:match)
  end
end
