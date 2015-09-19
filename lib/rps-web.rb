require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'comp_player'

class RPSWeb < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views')}

  get '/' do
    erb :index
  end

  get '/name' do
    erb :new_game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
