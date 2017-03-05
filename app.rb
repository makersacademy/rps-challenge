require 'sinatra/base'
require './lib/rock_paper_scissors'
require './lib/player'
require './lib/opponent'

class Game < Sinatra::Base

  run! if app_file == $0

  get '/' do
    erb :name
  end
# this method calls a class method which create a new instance
# of the Player class and passes the name as a parameter
  post '/names' do
    RPS.create(params[:player_name])
    redirect '/welcome'
  end
# the welcome.erb file below can now access the same instance of
# Player class created above, to display the player name.
  get '/welcome' do
    erb :welcome
  end

  get '/play' do
    erb :play
  end

  post '/rock' do
    RPS.instance.player.choice('Rock')
    RPS.instance.outcome
    erb :rock
  end
end
