require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:username] = params[:names]
    redirect '/play'
  end

  get '/play' do 
    @username = session[:username]
    @game = $game
    erb :play
  end


  run! if app_file == $0
end
