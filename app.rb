# Global for testing, refactor to use group :test from Gemfile?
# $manual_test = true
DEBUG_PLAYER_1_NAME = "Siegfried" if $manual_test

require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  set    :session_secret, "fix for shotgun"
  enable :sessions

  get '/' do
    # session[:player_1_name] = DEBUG_PLAYER_1_NAME if $manual_test
  

    @debug_form_value = "value='#{DEBUG_PLAYER_1_NAME}'" if $manual_test
  
    puts "in /" if $manual_test
  
    p @debug_form_value if $manual_test
  
    erb :index
  end
  
  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect to('/play')
  end
  
  get '/play' do
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
