require 'sinatra/base'
require './lib/player'
class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/register' do
    $player = Player.new(params[:player])
    redirect '/welcome'
  end

  get '/welcome' do
    @player = $player
    erb(:welcome)
  end

  post '/choice' do
    session[:weapon] = params[:weapon]
    redirect '/decision'
  end

  get '/decision' do
    @player = $player
    @weapon = session[:weapon]
    erb :decision
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
