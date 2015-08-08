require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RPSWeb < Sinatra::Base
  set :views, Proc.new {File.join(root, "..", "views") }

  get '/' do
    erb :index
  end

  get '/register' do
    erb :register
  end

  post '/start_game' do
    @visitor = params[:first_name].capitalize unless params[:first_name] == ""
    $user = Player.new (@visitor)
    $computer = Player.new ("COMPUTER")
    $game = Game.new($user, $computer)
    erb :start_game
  end

  post '/result' do
    $user.throw_gesture((params[:gesture]).downcase)
    $computer.throw_gesture
    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
