require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  set :views, proc { File.join(root, "..", "views") }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/name' do
    @name = params[:name]
    erb :name
  end

  post '/board' do
    erb :board
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end