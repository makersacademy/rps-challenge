require "sinatra/base"
require './lib/game'

class RPS < Sinatra::Base
  use Rack::Session::Pool

  get "/" do
    erb(:index)
  end

  post "/name" do
    session[:game] = Game.new(params[:player_name])
    redirect :start
  end

  get "/start" do
    @name = session[:game].name
    erb(:start)
  end

  get "/play" do
    s = session[:game]
    @name = s.name
    @result = s.battle_check
    @ai_choice = s.ai_choice
    @user_choice = s.user_choice
    @score = s.score
    @turn = s.turn
    erb(:play)
  end

  get "/rock" do
    session[:game].choice('rock')
    redirect :play
  end

  get "/paper" do
    session[:game].choice('paper')
    redirect :play
  end

  get "/scissors" do
    session[:game].choice('scissors')
    redirect :play
  end

  run! if app_file == $0
end
