require 'sinatra'
require 'sinatra/base'

class RPS < Sinatra::Base

  enable :session

  get '/' do
    erb(:index)
  end

  post '/name' do
    session['name'] = params[:name]
    redirect '/game'
  end

  post '/game' do
    session['name'] = params[:name] # do I actually need to do this?
    @name = session['name']
    erb(:game)
  end

  run! if app_file == $0
end
