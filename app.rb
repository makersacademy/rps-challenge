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
    session[:player] = params[:Name]
    redirect '/play'
  end

  get '/play' do
    erb(:play, locals: { player: session[:player] })
  end

  post '/attack' do
    session[:game] = Game.new(weapon1: params[:weapon])

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
    erb(:win, locals: { player: session[:player], game: session[:game] })
  end

  get '/lose' do
    erb(:lose, locals: { player: session[:player], game: session[:game] })
  end

  get '/draw' do
    erb(:draw, locals: { player: session[:player], game: session[:game] })
  end
end
