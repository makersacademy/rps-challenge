require 'sinatra'
require 'game'

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

  get '/result' do
    @game = Game.instances
    @game.make_choice(params[:choice])
    erb :result
  end

end
