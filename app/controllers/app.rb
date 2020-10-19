require 'sinatra'
require './app/models/logic.rb'

class RPSGame < Sinatra::Base
  set :views, File.expand_path('../../views',__FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)
  set :root, File.dirname(__FILE__)
  enable :sessions
  set :session_secret, ENV["SESSION_SECRET"]


  get '/' do
    session[:logic] = Game.new
    erb :index
  end

  post '/add-name' do
    session[:logic].add_names(params[:name_input])
    redirect '/game'
  end

  get '/game' do
    @game = session[:logic]
    erb :game
  end

  post '/rock' do
    session[:logic].calculate_winner("ROCK")
    redirect '/game'
  end

  post '/paper' do
    session[:logic].calculate_winner("PAPER")
    redirect '/game'
  end

  post '/scissors' do
    session[:logic].calculate_winner("SCISSORS")
    redirect '/game'
  end

  post '/again' do
    session[:logic].again
    redirect '/game'
  end

end
