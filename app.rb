require 'sinatra/base'
require 'sinatra/reloader'

class RockScissorsPaper < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    @player = params[:player]
    erb :play
  end

  run! if app_file == $0
end
