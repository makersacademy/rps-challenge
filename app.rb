require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/ai.rb'

class Game < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/play' do
    session[:player_one] = params[:player_one]
    redirect '/play'
  end

  get '/play' do
    @player_one = session[:player_one]
    erb :play
  end

  post '/results' do
    @player_choice = params[:choice].to_s.downcase
    ai = Ai.new
    @ai_choice = ai.random_choice
    @results_declaration = ai.declare_winner(@player_choice, @ai_choice)

    erb :results
  end

  run! if app_file == $0
end
