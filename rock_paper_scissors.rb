require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  Capybara.app = RockPaperScissors

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:name]
    # p params[:name]
    # p session[:player_1_name]
    # # p 'Get Visibility'
    # p player_1_name
    redirect '/play'
  end

  get '/play' do
    # puts session[:player_1_name]
    @player = session[:player_1_name]
    erb :play
  end

end
