require 'sinatra/base'
require './lib/game'
class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    @player = session[:player_name]
    Game.current = Game.new
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    @game = Game.current
    erb :play
  end

  get '/rock' do
    @game = Game.current
    @player = session[:player_name]
    @player_choice = "Rock"
    @choice = @game.choice.sample
    if @choice == "Scissors" then erb :win elsif @choice == "Paper" then erb :lost
    elsif @choice == "Rock" then erb :tie
    end
  end

  get '/paper' do
    @game = Game.current
    @player = session[:player_name]
    @player_choice = "Paper"
    @choice = @game.choice.sample
    if @choice == "Scissors" then erb :lost elsif @choice == "Paper" then erb :tie
    elsif @choice == "Rock" then erb :win
    end
  end

  get '/scissors' do
    @game = Game.current
    @player = session[:player_name]
    @player_choice = "Scissors"
    @choice = @game.choice.sample
    if @choice == "Scissors" then erb :tie elsif @choice == "Paper" then erb :win
    elsif @choice == "Rock" then erb :lost
    end
  end

    run! if app_file == $0

end
