require 'sinatra/base'

class RockPaperScissors < Sinatra::Application
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = params[:player_name]
    p params[:player_name]
    $game = Game.new(player)
    p $game
    redirect '/play'
  end

  get '/play' do
    @player_name = $game.player
    erb :play
  end

  post '/result' do
    @player_name = $game.player
    @player_choice = params[:choice]
    @computer_choice = $game.computer_choice
    erb :result
  end

# start the server if ruby file executed directly
  run! if app_file == $0
end

# add winner test back in once game class working
# add the rules for the game to the game class - see rubric for hash suggestion
