require 'sinatra/base'
require './lib/game'
require './lib/bot'

class Rps < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure is working!'
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    erb(:play)
  end

  post '/play' do
    session[:choice] = params[:choice]
    session[:bot_choice] = Bot.new.choice
    redirect '/play'
  end
end
