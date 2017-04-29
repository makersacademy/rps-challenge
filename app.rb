require 'sinatra/base'
require './lib/rps'

class Game < Sinatra::Base

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
    @rps.pair_weapons
    erb :rock
  end

  get '/paper' do
    @name = session[:name]
    @rps = RPS.new(:paper)
    @rps.pair_weapons
    erb :paper
  end

  get '/scissors' do
    @name = session[:name]
    @rps = RPS.new(:scissors)
    @rps.pair_weapons
    erb :scissors
  end

  run! if app_file == $0

end
