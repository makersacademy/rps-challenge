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
    @turn = s.turn
    @score = s.score
    @result = s.battle_check
    @ai_choice = s.ai_choice
    @user_choice = s.user_choice
    erb(:play)
  end

  get "/cat" do
    session[:game].choice('cat')
    redirect :play
  end

  get "/goku" do
    session[:game].choice('goku')
    redirect :play
  end

  get "/patrick" do
    session[:game].choice('patrick')
    redirect :play
  end

  run! if app_file == $0
end
