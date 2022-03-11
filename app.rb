require 'sinatra/base'
require 'sinatra/reloader'

class RockScissorsPaper < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  get '/rock' do
    @player = session[:player]
    erb :rock
  end

  run! if app_file == $0
end
