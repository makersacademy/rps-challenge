require 'sinatra/base'
require_relative './lib/Computer'
require_relative './lib/game'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player1_name] = params[:player1_name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    erb :play
  end

  post '/play' do
    session[:option] = params[:option].to_sym
    session[:computer_option] = Computer.new.random_option
    redirect '/play'
  end

end
