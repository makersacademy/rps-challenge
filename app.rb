require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"
require "./lib/computer.rb"

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = params[:player_name]
    erb :play
  end

    post '/name' do
      @player = Player.new(params[:player_name])
      redirect '/play'
    end

    get '/play' do
      erb(:play)
    end

    post '/result' do
      # @computer_choice = Computer.new.computer_choice
      # @player_choice = Player.new.choice
      # @result = Game.new.match(@computer_choice, @player_choice)
      erb(:result)
    end


  run! if app_file == $0

end
