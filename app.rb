require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions 
  set :session_secret, 'secret'

  get '/' do
    erb(:index)
  end
 
  post '/names' do
    $player = Player.new(params[:player])
    erb(:play)
  end

  post '/result' do 
    $player_choice = params[:playerchoice]
    erb(:result)
  end 

  run! if app_file == $0
end 
