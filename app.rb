require 'sinatra/base'
require './lib/rps_game.rb'


class RPSApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session.store(:name, params[:name])
    redirect '/choose_move'
  end

  get '/choose_move' do
    @name = session[:name]
    erb(:choose_move)
  end

  post '/choice' do
    choice = params[:choice]
    @name = session[:name]
    @result = RPSGame.new.play_game(choice)
    erb(:result)
  end

end
