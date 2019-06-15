require 'sinatra/base'
require './lib/player.rb'


class RPS < Sinatra::Base

  before do
      @player_1 = $player_1
      @computer = $computer
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/' do
    $player_1 = Player.new(params[:name])
    redirect '/start'
  end

  get '/start' do
    erb(:start)
  end

  post '/start' do
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/play' do
    @player_1.choose(params[:choice])
    redirect '/confirmation'
  end

  get '/confirmation' do
    erb(:confirmation)
  end

  post '/confirmation' do
    $computer = Player.new
    @computer = $computer
    @computer.choose
    redirect 'results'
  end

  get '/results' do
    erb(:results)
  end

  run! if app_file == $0
end
