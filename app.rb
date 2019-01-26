require 'sinatra/base'

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
    erb(:results)
  end

end
