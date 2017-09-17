require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/computer' do
    erb(:computer)
  end

  get '/human' do
    erb(:human)
  end

  post '/vscomputername' do
    if params[:player_1_name].nil?
      redirect '/computer'
    else
      player_1 = Player.new(params[:player_1_name])
      $game = Game.new(player_1)
      redirect '/choose'
    end
  end

  post '/head2headnames' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/head2headchoose'
  end

  get '/choose' do
    @game = $game
    erb(:choose)
  end

  get '/head2headchoose' do
    @game = $game
    erb(:head2headchoose)
  end

  get '/head2headchoose2' do
    @game = $game
    erb(:head2headchoose2)
  end

  post '/choice' do
    @game = $game
    if @game.check_entry(params[:player_1_choice]) == false
      redirect '/choose'
    else
      @game.player_choice(params[:player_1_choice])
      redirect '/result'
    end
  end

  post '/head2headchoice1' do
    @game = $game
    if @game.check_entry(params[:player_1_choice]) == false
      redirect '/head2headchoose'
    else
      @game.player_choice(params[:player_1_choice])
      redirect '/head2headchoose2'
    end
  end

  post '/head2headchoice2' do
    @game = $game
    if @game.check_entry(params[:player_2_choice]) == false
      redirect '/head2headchoose2'
    else
      @game.player_two_choice(params[:player_2_choice])
      redirect '/head2headresult'
    end
  end

  get '/result' do
    @game = $game
    @computer_choice = @game.computer_choice?
    @winner = @game.win?(@game.player_1_choice, @computer_choice)
    erb(:result)
  end

  get '/head2headresult' do
    @game = $game
    @winner = @game.win?(@game.player_1_choice, @game.player_2_choice)
    erb(:head2headresult)
  end

  run! if app_file == $0

end
