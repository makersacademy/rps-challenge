require 'sinatra/base'
require_relative './lib/player'


class RockPaperScissors < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect "/play"
  end

  get "/play" do
    @player1 = session[:player_1_name]
    erb(:play)
  end

  get "/attack" do
    @player1 = session[:player_1_name]
    @rock = params[:rock]
    @paper = params[:paper]
    @scissors = params[:scissors]
    erb(:attack)
  end

  run! if app_file == $0

end
