require 'sinatra/base'
require './lib/user.rb'
require './lib/cpu.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do 
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  post '/game' do
    user = User.new
    session[:rock] = user.input(params[:rock])
    session[:paper] = user.input(params[:paper])
    session[:scissor] = user.input(params[:scissor])
    session[:cpu_input] = CPU.new.random
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    @user_input = [session[:rock],session[:paper],session[:scissor]].join
    @cpu_input = session[:cpu_input]
    erb(:play)
  end

  run! if app_file == $0
end