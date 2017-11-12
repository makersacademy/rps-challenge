require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  enable  :sessions

  get '/' do
    session[:choose] = nil
    erb(:index)
  end

  post '/name' do
    # session[:name] = params[:name]
    Game.store(Game.new(params[:name]))
    redirect '/play'
  end

  get '/play' do
    # @player = session[:name]
    @player = Game.read.name
    @choose = session[:choose]
    @result = session[:result]
    erb(:play)
  end

  get '/select' do
    session[:choose] = params[:choose]
    session[:result] = Game.read.play(params[:choose])
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

end
