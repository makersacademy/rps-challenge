require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/register' do
    erb :register
  end

  post '/registered' do
    @name = params[:name]
    erb :registered
  end

  get '/play' do
    erb :play
  end

  post '/game' do
    @weapon_type1 = params[:weapon_type1]
    erb :game
  end

  post "/result" do
    erb :result
  end


  run! if app_file == $0
end
