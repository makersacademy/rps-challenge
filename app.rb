require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base

  configure:development do 
    register Sinatra::Reloader
  end

  get '/' do
    # 'Lets play Rock Paper Scissors!'
    erb :index
  end

  # post '/welcome' do
  #   erb :index
  # end

  run! if app_file == $0
end