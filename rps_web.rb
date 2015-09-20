require 'sinatra/base'
require './lib/game.rb'

class Rock_Paper_Scissors < Sinatra::Base

  enable :sessions

  set :views, proc { File.join(root, 'views') }

# Stage 1 - Signing up & Beginning the game

  get '/' do
    erb :index
  end

  post '/sign-up' do
    session[:name] = params[:name]
    redirect '/player'
  end

  get '/player' do
    $player = Player.new(session[:name])
    redirect '/new-game'
  end

  get '/new-game' do
    erb:new_game
  end

  get '/options' do
    $options = Options.new
    $options.add_choice :rock, :paper, :scissors
    redirect '/computer'
  end

  get '/computer' do
    $computer = Computer.new($options)
    p $computer
    redirect '/set-game'
  end

  get '/set-game' do
    $game = Game.new($player, $computer)
    redirect '/start-game'
  end

  get '/start-game' do
    erb :start_game
  end

  get '/result' do
    @player_choice = params[:player_choice]
    @result = $game.play(@player_choice)
    p @result
    erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0

end
