require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/rock_paper_scissors'

# Global for testing, refactor to use group :test from Gemfile?
# $verbose = true
# NUMBER_OF_PLAYERS = 1

class RockPaperScissorsWebGame < Sinatra::Base
  enable :sessions
  set :session_secret, ENV.fetch('SESSION_SECRET') { SecureRandom.hex(64) }

  get '/' do
    verbose_output(request.url) if $verbose

    session[:players] = Array.new

    erb :index
  end
  
  post '/names' do
    verbose_output(request.url) if $verbose

    session[:players].push(Player.new(params[:player_0_name]))
    session[:players].push(Player.new("Computer", true))

    redirect to('/play')
  end
  
  get '/play' do
    verbose_output(request.url) if $verbose
 
    erb :play
  end

  post '/move' do
    verbose_output(request.url) if $verbose
 
    session[:players][0].move = params[:commit]
    session[:players][1].move = ['🗿', '📄', '✂'].sample

    redirect to('result')
  end

  get '/result' do
    verbose_output(request.url) if $verbose

    game = RockPaperScissors.new
    result = game.result(session[:players][0], session[:players][1])

    case result
    when RockPaperScissors::RESULT_DRAW
      @message = "🙏 It's a draw! 🙏"
    else
      if session[:players][0].move == result
        @message = "🎉 #{session[:players][0].name} wins! 🎉"
      else
        @message = "🎉 #{session[:players][1].name} wins! 🎉"
      end
    end

    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

  private

  def verbose_output(where)
    puts "\n#{where}"
    puts "session: "; p session
    puts "params: "; p params
  end

end
