# app.rb
require 'sinatra/base'
require './lib/computer'
# require_relative './lib/game'

class RPS < Sinatra::Base
  # ... app code here ...

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:Name] = params[:Name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:Name]
    erb(:play)
  end

  post '/fight' do
    session[:RPS] = params[:RPS]
    @player = session[:Name]
    @player_choice = session[:RPS]
    @computer_choice = Computer.new.choice
    # @winner = winner.choice
    erb(:fight)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
