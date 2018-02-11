require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/' do
    @name = params[:player]
    erb(:game)
  end

  post '/game' do
    @choice = params[:choice]
    erb(:winner)
  end

  run! if app_file == $0
end
