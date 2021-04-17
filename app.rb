require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :names_form
  end

  post '/names' do
    @player_1_name = params[:player_1_name]
    erb :play
  end

  run! if app_file == $0
end
