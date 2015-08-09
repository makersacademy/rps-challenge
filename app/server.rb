require 'sinatra/base'
require_relative '../lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  # tell sinatra where we're storing the views & public files
  set :views, proc { File.join(root, '..', 'views') }
  set :public_dir, proc { File.join(root, '..', 'public_dir') }

  get '/' do
    erb :index
  end

  post '/update-game' do
    
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
