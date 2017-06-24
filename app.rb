require 'sinatra/base'

class Rps < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  post '/choose' do
    @game = Game.create_new_game(params[:player_1])
    erb :choose
  end
  
  before do
    @game = Game.game_instance
  end
  
  run! if app_file == $0
end
