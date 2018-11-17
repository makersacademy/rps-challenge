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
    redirect :arena
  end

  get '/arena' do
    erb :arena
  end

  get '/message' do
    erb :message
  end

  run! if app_file == $0

end
