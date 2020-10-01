require 'sinatra'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/name'
  end

  get '/name' do
    erb :name, :locals => { :name => session[:name] }
  end

  post '/play' do
    session[:weapon] = params[:weapon]
    redirect '/play'
  end

  get '/play' do
    game = Game.new(session[:weapon])
    if game.won?
      outcome = 'won'
    elsif game.draw?
      outcome = 'drew'
    else
      outcome = 'lost'
    end
    erb :play, :locals => { :weapon => session[:weapon],
      :name => session[:name],
      :outcome => outcome,
      :computer_weapon => game.random }
  end
end
