require 'sinatra/base'
require_relative './lib/game.rb'

class RockPaperScissorsApp < Sinatra::Base

  enable :sessions
  set :session_secret, "secret"

  # before do
  #   @game = Game.load
  # end

  get '/' do
    erb :index
  end

  post '/get_name' do
    $game = Game.new(params[:name].capitalize)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/rock' do
    @game = $game
    @game.rock
    if @game.end?
      redirect '/finish'
    else
      redirect '/play'
    end
  end

  post '/paper' do
    @game = $game
    @game.paper
    if @game.end?
      redirect '/finish'
    else
      redirect '/play'
    end
  end

  post '/scissors' do
    @game = $game
    @game.scissors
    if @game.end?
      redirect '/finish'
    else
      redirect '/play'
    end
  end

  get '/finish' do
    @game = $game
    erb :gameover
  end

  run! if app_file == $0
end
