require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base

  set :views, Proc.new {File.join(root, "..", "views")}

  get '/' do
    erb :index
  end

  get '/register' do
    erb :register
  end

  post '/register' do
    if params[:name].empty?
      @message = "Please enter your name"
      erb :register
    else
      player = Player.new(params[:name])
      @welcome = "Welcome #{params[:name]}"
      erb :choose
    end
  end

  get '/choose' do
    game = Game.new
    erb :choose
  end

  get '/result' do
    computer = Computer.new
    erb :result
  end

  post '/result' do
    game = Game.new
    @choice = "You chose: #{params[:choice]}"
    @weapon = %w(Rock Paper Scissors).sample
    @opponent = "Your opponent has chosen: #{@weapon}"
    @outcome = game.result(:choice,:weapon)
    @results = "The outcome of the fight is #{params[:outcome]} has won"
    erb :result
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
