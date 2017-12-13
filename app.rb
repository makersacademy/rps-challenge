require 'sinatra/base'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    redirect '/register'
  end

  get '/register' do
    erb(:register)
  end

  post '/get-user' do
    session[:p1] = params[:p1]
    redirect '/rps-game'
  end

  get '/rps-game' do
    erb(:rps, locals: { p1: session[:p1], p2: 'TortoiseBot' })
  end

end
