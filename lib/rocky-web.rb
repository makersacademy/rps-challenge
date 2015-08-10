require 'sinatra/base'

class RockyWeb < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/game_page' do
    $game = initialize_game
    erb :new_game
  end

  def initialize_game
    game = Game.new
    game
  end


  set :views, proc { File.join(root, '..', 'views') }

  # start the server if ruby file executed directly
  run! if app_file == $0

end