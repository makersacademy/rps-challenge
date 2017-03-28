require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/card'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player]
    erb :play
  end

  post '/card' do
    session[:players] = Card.new(params[:choose].to_i)
    redirect '/result'
  end

  get '/result' do
    @random_card = Card.new
    @players_card = session[:players]
    @message = Game.create(@players_card, @random_card)
    erb :result
  end

  post '/result' do
    redirect '/play'
  end

  run! if app_file == $0
end
