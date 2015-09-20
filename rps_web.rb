require 'sinatra/base'
require './lib/game.rb'
require './lib/multiplayer.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  set :views, proc { File.join(root, 'views') }

  get '/' do
    erb :index
  end

  post '/sign-up' do
    session[:name] = params[:name]
    redirect '/player'
  end

  get '/player' do
    session[:size] = 0
    $player = Player.new(session[:name])
    redirect '/new-game'
  end

  get '/new-game' do
    erb:new_game
  end

  get '/multiplayer' do
    erb :multiplayer
  end

  post '/player2-sign-up' do
    session[:name2] = params[:name]
    redirect '/player2'
  end

  get '/player2' do
    $player2 = Player.new(session[:name2])
    redirect '/multiplayer-game'
  end

  get '/multiplayer-game' do
    session[:size] = 0
    $multiplayer = Multiplayer.new($player, $player2)
    redirect 'start-game'
  end

  get '/options' do
    $options = Options.new
    $options.add_choice :rock, :paper, :scissors
    redirect '/computer'
  end

  get '/computer' do
    $computer = Computer.new($options)
    redirect '/set-game'
  end

  get '/set-game' do
    $game = Game.new($player, $computer)
    redirect '/start-game'
  end

  get '/start-game' do
    session[:size] += 1
    erb :start_game
  end

  get '/rock' do
    session[:player_choice] = "rock"
    redirect '/check'
  end

  get '/paper' do
    session[:player_choice] = "paper"
    redirect '/check'
  end

  get '/scissors' do
    session[:player_choice] = "scissors"
    redirect '/check'
  end

  get '/check' do
    if $player2.nil?
      redirect '/result'
    else
      redirect '/multi-result'
    end
  end

  get '/multi-result' do
    if  session[:size] == 1
      session[:player1_choice] = session[:player_choice]
      session[:size] += 1
      redirect 'start-game'
    else
      session[:player2_choice] = session[:player_choice]
      session[:size] = 0
      redirect '/result2'
    end
  end

  get '/result2' do
    @result = $multiplayer.play(session[:player1_choice], session[:player2_choice])
    erb :result
  end

  get '/result' do
    @player_choice = session[:player_choice]
    @result = $game.play(@player_choice)
    erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0

end
