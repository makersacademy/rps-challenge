require "sinatra/base"
require "capybara"

class RPS_app < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/data' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  post '/choice' do

    redirect '/result'
  end

  get '/result' do

    erb :result
  end

end
