require 'sinatra/base'

class RpsGame < Sinatra::Base
enable :sessions
  get '/' do
    erb :index
  end

  get '/one_player' do
    erb :enter_name
  end

  post '/one_player/game_setup' do
    "Rock, paper, scissors"
    # create the game instance
    # create player instance
    # redirect to choice page
  end

  get 'one_player/choice' do
    # choose btw rock, paper, scissors
  end

end
