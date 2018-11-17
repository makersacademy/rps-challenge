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
    redirect '/result'
  end

  get '/result' do
    @name = session[:name]
    erb :result
  end

run! if app_file == $0

end
