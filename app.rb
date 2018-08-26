require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name = params[:player_one]
    erb(:play)
  end

end
