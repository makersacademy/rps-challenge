require 'sinatra'
require 'game'
require 'printer'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :form
  end

  post '/' do
    Game.create(params[:name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instances
    erb :play
  end

  post '/play' do
    @game = Game.instances
    @game.make_choice(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game = Game.instances
    erb :result
  end

end
