require 'sinatra/base'
require 'sinatra/reloader'
require_relative '../lib/rps.rb'
require_relative '../lib/player.rb'
require_relative '../lib/computer.rb'

class RockPaperScissors < Sinatra::Base

  set :session_secret, 'super secret'
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  before do
    @rps = RPS.current_game
  end

  get '/' do
    erb :index
  end

  post '/register' do
    @rps = RPS.new_game(Player.new(params[:name]),Computer.new)
    redirect '/play'
  end

  get '/play' do
    @name = @rps.player_one.name
    erb :play
  end

  get '/result' do

    erb :results
  end

  run! if app_file == $0

end
