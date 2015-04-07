require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  set :views, proc { File.join(root, "..", "views") }

  enable :sessions

  get '/' do
    erb :index
  end
  post '/game' do
    @name = params[:new_player]
    session[:player] = @name
    erb :game
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
