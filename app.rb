require 'sinatra'
# require 'sinatra/reloader'


class Game < Sinatra::Base
  configure :test do
  end
  # enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end
end
