require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/play' do
    @player_1 = params[:player_1]
    erb :play
  end

  post '/results' do
    @player_choice = params[:choice]
    p @player_choice
    erb :results
  end

  run! if app_file == $0
end
