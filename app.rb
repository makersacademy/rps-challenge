require 'sinatra/base'
require_relative 'lib/player'

# Global for testing, refactor to use group :test from Gemfile?
# $verbose = true
# NUMBER_OF_PLAYERS = 1

class RockPaperScissorsWebGame < Sinatra::Base
  enable :sessions
  set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }

  get '/' do
    puts "\nin /" if $verbose
    p session if $verbose

    session[:players] = Array.new

    erb :index
  end
  
  post '/names' do
    puts "\nin /names" if $verbose
    p session if $verbose
    p params if $verbose

    session[:players].push(Player.new(params[:player_0_name]))

    if params[:commit] == "Play Computer"
      session[:players].push(Player.new("Computer"))
    end

    redirect to('/play')
  end
  
  get '/play' do
    puts "\nin /play" if $verbose
    p session if $verbose

    erb :play
  end

  post '/move' do
    puts "\nin /move" if $verbose
    p session if $verbose
    p params if $verbose

    session[:players][0].move = params[:commit]
    session[:players][1].move = ['🗿', '📄', '✂'].sample

    redirect to('result')
  end

  get '/result' do
    puts "\nin /result" if $verbose
    p session if $verbose

    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
