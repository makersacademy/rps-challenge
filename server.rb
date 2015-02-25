require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  set :views, Proc.new { File.join(root, "views") }

  get '/' do
    erb :index
  end

  post '/play' do
    @player = Player.new(params[:name])
    if params[:name].empty?
      erb :no_name
    else
      @player.choice = params[:choice]
      @computer = computer
      @game = Game.new(@player, computer)
      erb :play
    end
  end

  post "/result" do
    erb :result
  end

  get "/reset_game" do
    redirect to ('/play')
    erb :no_name
  end

  def computer
    choice = ["Rock","Paper","Scissors"].sample
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end