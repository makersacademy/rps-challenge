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
# the weapon choice the player makes is noted, and then the opponent makes their move
# this is then sent to the evaluate_outcome method where it is compared with the player
# move to see who has won.
  post '/choose_move' do
    RPS.instance.player.choice(params[:choice])
    result = RPS.instance.outcome
    evaluate_outcome(result)
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

  # add button to restart game

  private

  def evaluate_outcome(result)
    if (result == :win)
      redirect '/winner'
    elsif (result == :lose)
      redirect '/loser'
    else
      redirect '/tie'
    end
  end
end
