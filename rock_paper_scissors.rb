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
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_1_name]
    erb :play
  end

  post '/turn' do
    @choice = params[:choice]
    erb :turn
  end

end
