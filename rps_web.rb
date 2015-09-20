require 'sinatra/base'
require_relative 'lib/game'

class RPSWeb < Sinatra::Base
  enable :sessions
  set :views, proc{File.join(root, '' , 'views')}

  get '/' do
    erb :index
  end

  post'/play-game' do
    erb :play_game
  end

  run! if app_file == $0
end
