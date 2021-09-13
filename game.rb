require "sinatra/base"
require "sinatra/reloader"
require "./lib/throw.rb"

class Game < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end

    get "/" do
      erb :index
    end

    get "/:type" do
      @user_move = "#{params[:type]}"
      new_game = Throw.new("#{params[:type]}")
      @comp_move = new_game.computer_move
      @winner = new_game.who_wins
      erb :move
    end
  end

  run! if game_file==$0