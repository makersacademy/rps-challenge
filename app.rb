require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/welcome_rules' do
    $player_name = Player.new(params[:player_name])
    @player_name = $player_name
    erb(:welcome_rules)
  end

before do
  @game = Game.instance
end

  get '/play' do
    @player_name = $player_name
    @user_score = $user_score
    @computer_score = $computer_score
    if $res == ''
      @result = ''
    else
      @result = @game.game_result($res)
    end
    if (@result == "You Win!")
      @user_score +=1
    elsif @result == "You Lose!"
      @computer_score +=1
    end
    $user_score = @user_score
    $computer_score = @computer_score
    erb(:play)
  end

  post '/attack' do
    @game = Game.create
    $user_score = 0
    $computer_score = 0
    $res = ''
    redirect '/play'
  end

  post '/choice' do
    $res = params[:player_choice]
    redirect '/play'
  end

  run! if app_file == $0
end
