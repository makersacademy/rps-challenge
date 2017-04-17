require 'sinatra'
require './lib/game_manager'

enable :sessions

$game ||= Game_manager.new

get '/' do
  erb :index
end

# post '/' do

post '/playervsplayer' do
  session[:name] = params[:name]
  setup_players
  @player_name = session[:name]
  $players[session[:session_id]] = session[:name]
  redirect '/holdone'
  erb :blank
end

# post '/playervscpu' do
#   session[:name] = params[:name]
#   setup_players
#   @player_name = session[:name]
#   $players[session[:session_id]] = session[:name]
#   $players['CPU'] = 'CPU'
#   redirect '/holdone'
# end

get '/holdone' do
  while !(two_players?)
  end
  redirect '/choice'
end

get '/choice' do

  setup_scores
  $choices = {}
  # if $players.values[1] == 'CPU'
  #   $choices['CPU'] = $game.cpu_choice
  # end
  erb :choice
end

post '/chosen' do
  @choice = params[:choice]
  $choices[session[:session_id]] = @choice
  redirect '/holdtwo'
end

get '/holdtwo' do
  while !(two_choices?)
  end
  redirect '/result'
end

get '/result' do
  if $game.new_round == 'DRAW'
    @round_winner = 'DRAW'
  else
    @round_winner = $game.new_round
    $scores[@round_winner] += 0.5
  end

  @round = $game.current_round
  erb :result
end


def setup_players
  $players ||= {}
end

def setup_scores
  $scores ||= {$players.values[0] => 0.0, $players.values[1] => 0.0}
end

def two_players?
  $players.length == 2
end

def two_choices?
  $choices.length == 2
end
