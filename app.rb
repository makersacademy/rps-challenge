require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secretysecret"
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player1] = params[:Name]
    session[:game_type] = params[:game_type]
    case params[:game_type]
    when 'solo'
      session[:player2] = 'Machine'
      redirect '/play'
    when 'multiplayer'
      redirect '/name2'
    end
  end

  get '/name2' do
    erb(:name2)
  end

  post '/names' do
    session[:player2] = params[:Name]
    redirect '/play'
  end

  get '/play' do
    erb(:play, locals: session)
  end

  post '/attack' do
    case session[:game_type]
    when 'solo'
      session[:game] = Game.new(weapon1: params[:weapon1])
    when 'multiplayer'
      session[:game] = Game.new(weapon1: params[:weapon1], weapon2: params[:weapon2])
    end

    case session[:game].result
    when :win
      redirect '/win'
    when :lose
      redirect '/lose'
    when :draw
      redirect '/draw'
    end
  end

  get '/win' do
    erb(:win, locals: session)
  end

  get '/lose' do
    erb(:lose, locals: session)
  end

  get '/draw' do
    erb(:draw, locals: session)
  end
end
