require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RSP < Sinatra::Base
  enable :sessions, :static

  set :views, proc { File.join(root, '..', 'views')}
  set :public_folder, Proc.new { File.join(root, '..', 'public') }

  get '/' do
    erb :index
  end

  get '/start' do
    @name = params[:name]
    session[:name] = @name
    redirect "/error" if @name == ""
    erb :start
  end

  get '/error' do
    @name = params[:name]
    redirect "/error" if @name == ""
    erb :error
  end

  get '/new_game' do
    @name = params[:name]
    erb :new_game
  end

  post '/new_game' do
    player = Player.new
    $game = Game.new player
    @player_choice = params[:choice].to_s
    @computer_choice = $game.computer_choice
    begin
      if :choice && :choice != ""
        @result = $game.result(player.select(:choice))
        if $game.player.win?
          redirect '/win'
        # elsif $game.player.draw?
        #   redirect '/draw'
        # else
        #   redirect '/lost'
        end
      else
        erb :new_game
        # @error = 'You have not made a valid selection'
      end
    rescue RuntimeError => @error

    end

    erb :new_game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
