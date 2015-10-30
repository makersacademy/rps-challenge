require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions
  run! if app_file == $0

  get '/' do
    'Please enter your name:'
    erb(:index)
  end

  post '/registered' do
    session['name'] = params[:Player_name]
  end

end
