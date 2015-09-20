require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/human'
require_relative 'lib/computer'
require_relative 'lib/game'

class Rps_web < Sinatra::Base

  set :views, proc { File.join(root, 'views') }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/name' do
    @name = session[:name]
    erb :name
  end

  post '/name' do
    p session[:name] = params[:name]
    redirect ('/name') if params[:name].empty?
    redirect ('/game')
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  run! if app_file == $0
end
