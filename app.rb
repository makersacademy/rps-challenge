require 'sinatra/base'
require "./models/computer"
require "./models/player"
require "./models/player"

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/playername' do
    session[:name] = params[:name]

    redirect '/playgame'
  end

  get '/playgame' do
    @name = session[:name]
    erb(:play)
  end

  get '/battle' do

  end

  run if app_file == $0

end
