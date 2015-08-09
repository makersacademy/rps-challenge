require 'sinatra/base'
# require_relative "game.rb"

class RockPaperScissors < Sinatra::Base

  enable :sessions

  # $game = Game.new
  # $computer = Computer.new

  get '/' do
    erb :index
  end

  get "/register" do
    erb :register
  end

  $players = []

  post "/register" do
    session[:name] = params[:name]
    @player = session[:name]
    $players << @player
    redirect "/game"
  end

  get "/game" do
    # p @player
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
  set :views, Proc.new { File.join(root, "..", "views") }
  set :public_dir, proc { File.join(root, '..', 'public_dir') }
end
