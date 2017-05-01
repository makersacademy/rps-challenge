require 'sinatra/base'
require './lib/rpsls'

class RPSLSWeb < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  get '/rock' do
    @name = session[:name]
    @rpsls = RPSLS.new(:rock)
    erb :rock
  end

  get '/paper' do
    @name = session[:name]
    @rpsls = RPSLS.new(:paper)
    erb :paper
  end

  get '/scissors' do
    @name = session[:name]
    @rpsls = RPSLS.new(:scissors)
    erb :scissors
  end

  get '/lizard' do
    @name = session[:name]
    @rpsls = RPSLS.new(:lizard)
    erb :lizard
  end

  get '/spock' do
    @name = session[:name]
    @rpsls = RPSLS.new(:spock)
    erb :spock
  end

  run! if app_file == $0

end
