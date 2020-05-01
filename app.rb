require 'sinatra/base'
require_relative 'lib/player'

# Global for testing, refactor to use group :test from Gemfile?
# $manual_test = true
# NUMBER_OF_PLAYERS = 1
# MANUAL_TEST_PLAYER_0_NAME = "PLAYER_0" if $manual_test
# MANUAL_TEST_PLAYER_0_NAME = "" if $manual_test

class RockPaperScissorsWebGame < Sinatra::Base
  enable :sessions
  set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }

  get '/' do
    puts "in /" if $manual_test

    session[:players] = Array.new

    @input_form_player_0 =  "<label for='player_0'>\n"
    @input_form_player_0 += "    First player name:\n"
    @input_form_player_0 += "    <input type='text' name='player_0_name'"
    @input_form_player_0 += " value='#{MANUAL_TEST_PLAYER_0_NAME}'" if $manual_test
    @input_form_player_0 += ">\n"
    @input_form_player_0 += "  </label>"

    erb :index
  end
  
  post '/names' do
    puts "in /names" if $manual_test

    session[:players].push(Player.new(params[:player_0_name]))
    redirect to('/play')
  end
  
  get '/play' do
    puts "in /play" if $manual_test
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
