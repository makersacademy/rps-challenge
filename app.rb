require 'sinatra/base'

class Game < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/play' do
    "Welcome, #{params[:player_1]}"
  end

end
