require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/name-form-page" do
    @name = params[:name]
    session[:name] = @name

    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post "/store-users-choice" do
    @users_choice = params[:Choice]

    session[:users_choice] = @users_choice

    redirect '/confirmation-page'
  end

  get "/confirmation-page" do
    @users_choice = session[:users_choice]

    erb :confirmation_page
  end

  get"/result" do
    game = Game.new(session[:users_choice])
    @outcome = game.decide_winner

    erb :result
  end

  run! if app_file == $0
end
