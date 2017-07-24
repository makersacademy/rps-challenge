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
    @name = session[:name]
    @weapon_type = session[:weapon_type]
    @opponent_weapon = session[:opponent_weapon]
    erb :play
  end

  post '/play' do
    session[:weapon_type] = params[:weapon_type]
    session[:opponent_weapon] = :rock
    redirect '/play'
  end

  post "/result" do
    erb :result
  end


  run! if app_file == $0
end
