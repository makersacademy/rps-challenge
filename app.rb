require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(Player.new(params[:player1]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    params
    if params[:choice] == 'Rock' then redirect '/rock'
    elsif params[:choice] == 'Paper' then redirect '/paper'
    elsif params[:choice] == 'Scissors' then redirect '/scissors'
  end

  end
  get '/rock' do
    erb :rock
  end
  get '/paper' do
    erb :paper
  end
  get 'scissors' do
    erb :scissors
  end

  run! if app_file == $0
end
