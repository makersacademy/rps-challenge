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

  post '/choose_move' do
    RPS.instance.player.choice(params[:choice])
    result = RPS.instance.outcome
    if (result == :win)
      redirect '/winner'
    elsif (result == :lose)
      redirect '/loser'
    else
      redirect '/tie'
    end
  end

  get '/winner' do
    erb :winner
  end

  get '/tie' do
    erb :tie
  end

  get '/loser' do
    erb :loser
  end
  # post '/paper' do
  #   RPS.instance.player.choice('Paper')
  #   RPS.instance.outcome
  #   erb :paper
  # end
  #
  # post '/scissors' do
  #   RPS.instance.player.choice('Scissors')
  #   RPS.instance.outcome
  #   erb :scissors
  # end
end
