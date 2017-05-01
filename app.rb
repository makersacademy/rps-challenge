require 'sinatra/base'
require './lib/rps'

class RPSWeb < Sinatra::Base

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
    @rps = RPS.new(:rock)
    erb :rock
  end

  get '/paper' do
    @name = session[:name]
    @rps = RPS.new(:paper)
    erb :paper
  end

  get '/scissors' do
    @name = session[:name]
    @rps = RPS.new(:scissors)
    erb :scissors
  end

  get '/lizard' do
    @name = session[:name]
    @rps = RPS.new(:lizard)
    erb :lizard
  end

  get '/spock' do
    @name = session[:name]
    @rps = RPS.new(:spock)
    erb :spock
  end

  run! if app_file == $0

end
