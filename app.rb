require 'sinatra'
require 'sinatra/base'
require 'shotgun'


class RPS < Sinatra::Base
 enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect("/play")
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/selection' do
    session[:selection] = params[:selection]
    redirect('/score')
  end

  get '/score' do
    game = Game.new
    @name = session[:name]
    @player_choice = session[:selection]
    @computer_choice = game.computer_choice
    @result = game.result.(@player_choice, @computer_choice)
    
    erb(:result)
  end

  run! if app_file == $0
end