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

    @input_form_player_0 =  "<label for='player_0'>\n"
    @input_form_player_0 += "    First player name:\n"
    @input_form_player_0 += "    <input type='text' name='player_0_name'"
    @input_form_player_0 += ">\n"
    @input_form_player_0 += "  </label>"

    erb :index
  end
  
  post '/names' do
    puts "\nin /names" if $verbose
    p session if $verbose

    session[:players].push(Player.new(params[:player_0_name]))
    session[:players].push(Player.new("Computer"))

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

    session[:players][0].move = params[:commit]

    redirect to('result')
  end

  get '/result' do
    puts "\nin /result" if $verbose
    p session if $verbose

    @computer_move = ['🗿', '📄', '✂'].sample

    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
