require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  enable  :sessions

  get '/' do
    session[:choose] = nil
    session[:result] = nil
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:name]
    @choose = session[:choose]
    @result = session[:result]
    erb(:play)
  end

  get '/select' do
    session[:choose] = params[:choose]
    Game.store(Game.new(session[:name], params[:choose]))
    session[:result] = Game.read.play
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
