require 'sinatra/base'
require 'sinatra/reloader'
require './model/rps'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

 
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  post '/selection' do
    @choice = params[:choice]
    op = Opponent.new
    @roll = op.roll
    @result = op.result(@choice, @roll)
    erb(:results)
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  run! if app_file == $0
end