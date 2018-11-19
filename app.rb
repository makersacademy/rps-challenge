require 'sinatra/base'
require './lib/random_rps.rb'
require './lib/choices.rb'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/outcome'
  end

  get '/outcome' do
    @player_name = session[:player_name]
    @player_choice = session[:player_choice]
    random_choice = RandomRps.new
    @random_choice = random_choice.sample_rps_array
    @outcome = random_choice.rock_paper_scissors(@player_choice, @random_choice)
    erb :outcome
  end

  post '/play-again' do
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
