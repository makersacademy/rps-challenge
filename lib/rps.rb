require 'sinatra/base'
require './lib/game'
require './lib/player1'
require './lib/computer'

class Rps < Sinatra::Base
    set :views, Proc.new { File.join(root, "..", "views") }


  get '/' do
    erb :index
  end

  get '/game/new' do
    erb :game_new
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end

