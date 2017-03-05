$VERBOSE=nil

require 'sinatra/base'
require_relative 'lib/players.rb'
require_relative 'lib/game.rb'
require_relative 'lib/computer.rb'
require_relative 'spec/features/web_helper.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/storage' do
    session[:p1]=params[:NAME]
    redirect '/welcome'
  end

  get '/welcome' do
    new_player
    erb :welcome
  end

  get '/final' do
    button_pressed()
    new_game()
    computer_choice()
    erb @game.result
  end

end
