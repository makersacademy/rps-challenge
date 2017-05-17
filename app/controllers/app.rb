require 'sinatra/base'
require_relative '../models/players.rb'
require_relative '../models/game.rb'
require_relative '../models/computer.rb'
require_relative '../../spec/features/web_helper.rb'

class RPS < Sinatra::Base

  enable :sessions
  set :root, '/Users/Hyper/GIT/rps-challenge/app'

  get '/' do
    erb :index, :layout => true
  end

  post '/storage' do
    session[:p1]=params[:NAME]
    redirect '/welcome'
  end

  get '/welcome' do
    new_player()
    erb :welcome
  end

  get '/final' do
    button_pressed()
    new_game()
    erb @game.result
  end

end
