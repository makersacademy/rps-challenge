require "sinatra/base"
require_relative "./lib/game.rb"
require_relative "./lib/player.rb"
require_relative "./lib/randomMovement.rb"

class Playing < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/movement" do
    session[:player_name] = params[:name]
    redirect "/ask_movement"
  end

  get "/ask_movement" do
    erb :askMovement
  end

  post '/showResult' do
    @player_1 = Player.new(session[:player_name], params[:movement])
    @server_player = Player.new("computer",
      RandomMovement.new().random_movement)
    @game = Game.new(@player_1, @server_player)
    @message = @game.winner_term
    erb :result
  end

  run! if app_file == $0
end
