require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class App < Sinatra::Base

  set :root, File.dirname(__FILE__)
  enable :static
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    # session[:player_name] = params[:player_name]
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/rock' do
    redirect '/play'
  end

  get '/paper' do
    redirect '/play'
  end

  get '/scissors' do
    redirect '/play'
  end

  get '/lizard' do
    redirect '/play'
  end

  get '/spock' do
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
