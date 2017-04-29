require 'sinatra/base'
require_relative './model/computer'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    @player = session[:player]
    erb :play
  end

  post '/play' do
    @player = session[:player]
    @option = params[:option]
    computer = Computer.new
    @computers_option = computer.computers_option
    erb :computers_option
  end

  run! if app_file == $0

end
