require 'sinatra/base'
require './lib/user.rb'
require './lib/cpu.rb'
require './lib/game.rb'
# require "rack_session_access/capybara"

class RPS < Sinatra::Base
  enable :sessions
  # use RackSessionAccess::Middleware if environment == :test

  get '/' do 
    erb(:index)
  end

  post '/name' do
    user = User.new(params[:player])
    session[:game] = Game.new(user)
    session[:player] = session[:game].user.name
    redirect '/play'
  end

  post '/game' do
    session[:selection] = [params[:rock], params[:paper], params[:scissor]].join
    session[:user_input] = session[:game].user.get_input(session[:selection])
    session[:cpu_input] = session[:game].cpu.random
    session[:result] = session[:game].result(session[:cpu_input])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    @user_input = session[:user_input]
    @result = session[:result]
    @cpu = session[:cpu_input]
    erb(:play)
  end

  run! if app_file == $0
end
