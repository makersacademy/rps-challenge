require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    erb(:play)
  end

  post '/play' do
    session[:choice] = params[:choice].to_sym
    session[:computer_choice] = Computer.new.computer_choice
    redirect '/play'
  end

  run! if app_file == $PROGRAM_NAME

end
