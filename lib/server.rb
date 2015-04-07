require 'sinatra/base'
require_relative 'player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/start' do
    @name = params[:name]
    session[:player] = Player.new @name
    erb :start
  end

  get '/action' do
    @name = session[:player].name
    erb :action
  end

  post '/result' do
    @action = params[:action]
    session[:player].select_action @action
    erb :result
  end
end
