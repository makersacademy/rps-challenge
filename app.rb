require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

   enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    # session[:marketeer_name] = params[:marketeer_name]
    $marketeer = Player.new(params[:marketeer_name])
    redirect '/play'
  end

  get '/play' do
    # @marketeer_name = session[:marketeer_name]
    @marketeer_name = $marketeer
    erb :play
  end

  post '/option' do
    session[:play_option] = params[:play_option]
    redirect '/option'
  end

  get '/option' do
    @play_option = session[:play_option]
    erb :option
  end

  run! if app_file == $0
end