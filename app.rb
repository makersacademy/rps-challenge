require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    session['name1'] = params[:name1]
    erb :index
  end

  post '/name' do
    @name1 = params[:name1]
    erb :name
  end

  run! if app_file == $0
end
