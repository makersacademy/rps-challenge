require 'sinatra/base'
require_relative 'lib/cpu'
require_relative 'lib/decide'

class RPS < Sinatra::Base
  enable :sessions
  cpu = CPU.new
  decide = Decide.new
  set :views, proc { File.join(root, "views") }

  get '/' do
    erb :index
  end

  get '/game' do
    redirect '/'
  end

  post '/game' do
    if params[:Choice]
      @p1_choice = params[:Choice]
      @p2_choice = cpu.choice
      @decision = decide.make @p1_choice, @p2_choice
      erb :result
    else
      session[:Name] = params[:Name] if params[:Name]
      erb :game
    end
  end

  get '/game_rpsls' do
    redirect '/'
  end

  post '/game_rpsls' do
    if params[:Choice]
      @p1_choice = params[:Choice]
      @p2_choice = cpu.choice
      @decision = decide.make @p1_choice, @p2_choice
      erb :result_rpls
    else
      session[:Name] = params[:Name] if params[:Name]
      erb :game_rpsls
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
