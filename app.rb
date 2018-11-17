require "sinatra/base"
require "capybara"
require "./lib/game"

class Rps_App < Sinatra::Base

  enable :sessions

  get '/' do
    erb :home
  end

  post '/data' do
    session[:name] = params[:name]
    session[:move] = params[:move]
    redirect '/arena'
  end

  get '/arena' do
    @name = session[:name]
    @move = session[:move]
    erb :arena
  end

  get '/player-wins' do
    
    erb :player
  end

  get '/PC-wins' do

    erb :player
  end



  run! if app_file == $0

end
