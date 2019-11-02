require 'sinatra/base'


class RockPaperScissors < Sinatra::Base
    enable :sessions

  get '/'  do
    'Hello world'
  end

  get '/login' do
    erb :login
  end

  post '/names' do
    session[:player_1_name] = params["player_1_name"]
    redirect '/round'
  end

  get '/round' do
    @player_1_name = session[:player_1_name]
    erb :round
  end

  post '/result' do
    @game = Game.new
    @player_1_name = session[:player_1_name]
    @player_round_choice = params["round_choice"]
    session[:player_round_choice] = @player_round_choice
    @computer_choice = @game.random_move
    @result = @game.result(@player_round_choice,@computer_choice)
    redirect @result
  end

 get '/win' do
   @player_1_name = session[:player_1_name]
   @player_round_choice = session[:player_round_choice]
   erb :win
 end

 get '/lost' do
   @player_1_name = session[:player_1_name]
   @player_round_choice = session[:player_round_choice]
   erb :lost
 end

  run! if app_file == $0
end
