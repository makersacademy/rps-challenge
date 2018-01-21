require "sinatra/base"
require './lib/player'
require './lib/game'
require './lib/ai'

class Rps < Sinatra::Base

  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:player] = Player.new(params[:player])
    redirect "/start"
  end

  get "/start" do
    @player = session[:player]
    erb :play
  end

  get '/play' do
    @player = session[:player]
    @player.save_choice(params[:choice])
    @ai_choice = Ai.new.choice
    @result = Game.new.play_match(@ai_choice, @player.choice)
    erb :result
  end

  run! if app_file == $0
end
