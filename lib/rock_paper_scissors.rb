require 'sinatra/base'
require_relative 'game'

class RockPaperScissors < Sinatra::Base
   set :views, proc { File.join(root, '..', 'views') }
   set :images, Proc.new { File.join(root, "..", "images") }
   player = Player.new
   computer = Computer.new
   @@game = Game.new(player, computer)


  get '/' do
    erb :index
  end

  get '/game/new' do
    erb :new_game
  end


  post '/game/new' do
    @visitor = params[:name]
    if @visitor && !@visitor.empty?
      redirect '/start'
    else
      redirect '/game/new'
    end
  end

  get '/start' do
    erb :start
  end

  post '/start' do
    @shapes = params[:shape]
    @@game.player.choice @shapes
    @@game.computer.random_choice
    redirect '/result'
  end

  get '/result' do
     @outcome = @@game.result
     if @outcome == "TIE"
      @final = "TIE"
    elsif @outcome == "YOU WON"
      @final = "YOU WON"
    else @outcome == "YOU LOST"
      @final = "YOU LOST"
    end
    erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
