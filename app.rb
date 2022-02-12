require 'sinatra/base'
require 'sinatra/reloader'

class Rock_paper_scissors < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb :start
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end

  run! if app_file == $0
end