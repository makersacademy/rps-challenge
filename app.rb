require 'sinatra/base'
require './lib/computer'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player]
    erb(:play)
  end

  post '/pick' do
    session[:pick] = params[:pick].to_sym
    redirect '/result'
  end

  get '/result' do
    @name = session[:player]
    @pick = session[:pick]
    computer = Computer.new
    computer.pick
    @computer_pick = computer.result
    @winner = computer.validate(@pick)
    erb(:result)
  end
end
