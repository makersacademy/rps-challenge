require 'sinatra/base'
require_relative 'lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  run! if app_file == $0
end
