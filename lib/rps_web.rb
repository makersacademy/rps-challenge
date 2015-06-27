require 'sinatra/base'
# require 'game'

class Rps_web < Sinatra::Base
enable :sessions

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :welcome
  end

  get '/welcome' do
    if (params[:name] == '' || params[:name] == nil)
      erb :welcome
    else
      session[:name] = params[:name]
      redirect '/new_game'
    end
  end

  get '/new_game' do
    erb :new_game
  end




end
