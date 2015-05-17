require 'sinatra/base'
require_relative 'lib/rps'
class RPSWeb < Sinatra::Base
  enable :sessions
  set :session_secret, 'spock'

  get '/' do
    erb :index
  end

  post '/game/config' do
    session[:name] = params[:name].empty? ? 'Anonymous' : params[:name]
    session[:mode] = params[:mode]
    redirect '/game'

  end

  post '/game' do
    @name = session[:name]
    @mode = session[:mode]
    erb :game
  end

  get '/game' do
    @name = session[:name]
    @mode = session[:mode].to_sym
    unless params[:choice].nil?
      game = RPS.new
      @p1_choice = params[:choice]
      @results = game.results(@p1_choice.to_sym, @mode)
      @cpu_choice = @results[:cpu_choice]
      @result = @results[:result]
    end
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
