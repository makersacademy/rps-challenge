require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @player_1 = params[:player_1_name]
    "New Challenger: #{@player_1}"
  end


  run! if app_file == $0
end