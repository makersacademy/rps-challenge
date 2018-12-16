require 'sinatra/base'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  enable :sessions

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  get '/rock' do
    erb(:rock)
  end

end
