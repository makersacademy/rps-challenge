require 'sinatra'
require_relative '../lib/player'

class RPS < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, 'key'
  end
  set :root, File.dirname(__FILE__)
  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  get '/play' do

  post '/names' do
    p session[:name] = params[:name]
    @name = session[:name]
    erb(:play)
  end

  get '/rock' do
    @name = session[:name]
    erb :rock
  end

  get '/paper' do
    @name = session[:name]
    erb :paper
  end

  get '/scissors' do
    @name = session[:name]
    erb :scissors
  end

end
