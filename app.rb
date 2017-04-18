require 'sinatra/base'
require './lib/turn.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    erb :play
  end

  post '/play' do
    session[:player_option] = params[:value]
    session[:player_option]
    session[:computer_option] = Computer.new.option
    redirect '/play'
  end

  run! if app_file == $0
end
