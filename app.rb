require 'sinatra/base'
require_relative 'lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @name = Game.instance.name
    erb :play
  end

  post '/choice' do
    if params[:Rock]
      object = params[:Rock]
    elsif  params[:Paper]
      object = params[:Paper]
    else
      object = params[:Scissors]
    end
      Game.instance.human_select(object)
      erb :result
  end



  run! if app_file == $0

end
