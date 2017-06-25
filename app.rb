require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'
require './lib/weapon'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  get '/hello' do
    "CYBER RPS"
  end

  get '/test' do
    "Hello world!"
  end

  run! if app_file == $PROGRAM_NAME
end
