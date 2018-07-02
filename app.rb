require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"
require "./lib/computer.rb"

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = session[:game]
  end

  after do
    session[:game] = @game
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = params[:player_name]
    @game = Game.new(@player_name)
    erb :play
  end

  post '/result' do
    @choice = params[:choice]
    @player = @game.player.name
    @computer = @game.computer.computer_choice
    @result = @game.match(@choice, @computer)
    erb(:result)
  end

  run! if app_file == $0

end
