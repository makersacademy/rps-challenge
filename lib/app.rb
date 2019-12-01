require 'sinatra/base'
require_relative 'player'
require_relative 'game'
require_relative 'computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure do
    set :static, true
    set :root, File.dirname(__FILE__)
    set :public, 'public'
  end
  
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/menu' do
    redirect '/'
  end

  post "/play" do
    @game.assign_player(Player.new(params['player-name']))
    redirect '/play'
  end

  post '/play-again' do
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/match' do
    @game.play_round(params[:choice])
    redirect '/match'
  end

  get '/match' do
    erb :match
  end

  run! if app_file == $0
end
