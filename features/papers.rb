require 'sinatra/base'

class Papers < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    @name = session['player_1_name']
    # 'Paper-Rock-Scissors!'
    erb :index
  end

  get '/new_game' do
    'What is your name?'
    erb :new_game
  end

  post '/new_game' do
    @name = session['player_1_name']
    erb :new_game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
