require 'sinatra/base'
require_relative 'lib/rps'
class RPSWeb < Sinatra::Base
  enable :sessions
  set :session_secret, 'spock'

  get '/' do
    erb :index
  end

  post '/game' do
    session[:name] = params[:name].empty? ? 'Human' :  params[:name] 
    @name = session[:name]
    erb :game
  end

  get '/game' do
    session[:name] = params[:name] if params[:name]
    @name = session[:name]
    unless params[:choice].nil?
      game = RPS.new
      @player_choice = params[:choice]
      @results = game.results(@player_choice.to_sym)
      @cpu_choice = @results[:cpu_choice]
      @result = @results[:result]
    end
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
