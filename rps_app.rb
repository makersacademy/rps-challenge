require 'sinatra'

class RPS < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/name" do
    session[:player] = params[:player_name]
    redirect('/game')
  end

  get "/game" do
    @player = session[:player]
    erb(:game_page)
  end
end
