require 'sinatra/base'
require './lib/round.rb'
require './lib/human.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/new-game' do
    session.clear
    session[:ready] = false
    session[:name1] = params[:name1]
    session[:name2] = 'botty'
    session[:ai?] = true
    redirect '/play'
  end

  get '/play' do
    @round = Round.new(session, Human, Computer)
    erb :play
  end

  run! if app_file == $0
end
    
