require 'sinatra/base'
require_relative 'game'

class RockPaperScissors < Sinatra::Base
 set :views, proc { File.join(root, '..', 'views') }
 enable :sessions
 set :static, true #to try and rectify rackup serving issue

 @@game = Game.new Player

  get '/' do
    erb :index
  end

  get '/game/new' do
    @error = params[:error]
    if @error.nil?
      @message = "What's your name?"
    else
      @message = "Please put in a valid name"
    end
    erb :new_game
  end

  post '/game' do
    @name = params[:name]
    session['name'] = @name

    if @name.empty?
      redirect to '/game/new?error=invalidname'
    else
      erb :game
    end
  end

  get '/game/turn' do
    erb :game_turn
  end

  post '/game/turn' do
    @player_turn = params[:choice]
    @@game.player_1.take_a_turn @player_turn
    @@game.player_2.random_selection
    @CPU_turn = @@game.player_2.check_turn
    @result = @@game.process_turn

    if @result == "Go again"
      @message = "You matched, go again"
    else
      @message = nil
    end

    if @result == "Game already won" && @@game.player_1.winner?
      redirect to '/game/won'
    elsif @result == "Game already won" && @@game.player_2.winner?
      redirect to '/game/lost'
    end

    erb :game_turn
  end

  get '/game/won' do
    @name = session['name']
    erb :winner
  end

  get '/game/lost' do
    @name = session['name']
    erb :loser
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
