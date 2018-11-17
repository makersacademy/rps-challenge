require 'sinatra/base'
require 'capybara'

Capybara.app

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    session[:move] = params[:move]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @move = session[:move]
    erb :play
  end

run! if app_file == $0

end
