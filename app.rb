require 'sinatra'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Application
enable :sessions

  get '/' do
    erb :index
  end

  post '/greeter' do
    session[:name] = params[:name]
    redirect '/choice'
  end

  get '/choice' do
    @name = session[:name]
    erb :choice
  end

  post '/selection' do
    @game = Game.create(params[:selection])
    redirect '/outcome'
  end

  get '/outcome' do
    @game = Game.instance
    @outcome = @game.outcome
    erb :outcome
  end
end
