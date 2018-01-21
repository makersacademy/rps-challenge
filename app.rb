require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(params[:player])
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  get '/selection' do
    erb :selection
  end

  run! if app_file == $0
  # this allows to run the server if the ruby file has been executed directly

end
