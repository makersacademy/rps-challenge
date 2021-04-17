require 'sinatra'
require "sinatra/reloader" if development?
require './lib/player'
require './lib/game'


class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before { @game = Game.instance }

  get '/' do
    erb "index.html".to_sym
  end

  post '/name' do
    @game = Game.create(params[:name])
    redirect '/choice'
  end

  get '/choice' do
    erb "choice.html".to_sym
  end

  post '/weapon' do
    if params[:rock]
      @game.player.weapon = params[:rock]
    elsif params[:paper]
      @game.player.weapon = params[:paper]
    elsif params[:scissors]
      @game.player.weapon = params[:scissors]
    end

    redirect '/play'
  end

  get '/play' do
    erb "play.html".to_sym
  end

  run! if app_file == $PROGRAM_NAME
end
