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
    @name = params[:name]
    erb :play
  end

end