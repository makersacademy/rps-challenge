require 'sinatra/base'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    erb :play
  end

  post '/play' do
    session[:player_option] = params[:option].downcase.to_sym
    session[:computer_option] = Computer.new.option
    # @computer_option = $computer_option
    redirect '/play'
  end

  run! if app_file == $0
end
