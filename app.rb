require 'sinatra/base'
require './lib/engine'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/storage' do
    session[:players_name] = params[:your_name]
    redirect "/play"
  end

  get '/play' do
    @player = session[:players_name]
    erb(:play)
  end

  post '/storage2' do
    session[:players_selection] = params[:rock_paper_scissors]
    redirect "/results"
  end

  get '/results' do
    @player = session[:players_name]
    @player_selected = session[:players_selection]
    engine = Engine.new
    @computer_selected = engine.random
    erb(:results)
  end

  get '/play_again' do
    redirect "/play"
  end

end
