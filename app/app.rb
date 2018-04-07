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
    @name = session[:name]
    @computer_choice = ["rock", "paper", "scissors"].sample
    erb :play2
  end

  post '/names' do
    p session[:name] = params[:name]
    @name = session[:name]
    erb(:play)
  end

  post '/rock' do
    @name = session[:name]
    erb :rock
  end

  post '/paper' do
    @name = session[:name]
    erb :paper
  end

  post '/scissors' do
    @name = session[:name]
    erb :scissors
  end

end
