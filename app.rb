# Global for testing, refactor to use group :test from Gemfile?
# $manual_test = true
NUMBER_OF_PLAYERS = 1
MANUAL_TEST_PLAYER_1_NAME = "PLAYER_1" if $manual_test

require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  set    :session_secret, "fix for shotgun"
  enable :sessions

  get '/' do
    puts "in /" if $manual_test

    @debug_form_value = "value='#{MANUAL_TEST_PLAYER_1_NAME}'" if $manual_test

    p @debug_form_value if $manual_test

    erb :index
  end
  
  post '/names' do
    puts "in /names" if $manual_test
    session[:player_1_name] = params[:player_1_name]
    redirect to('/play')
  end
  
  get '/play' do
    puts "in /play" if $manual_test
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
