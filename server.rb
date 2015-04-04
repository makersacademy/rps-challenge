require 'sinatra/base'
require_relative 'lib/cpu'

class RPS < Sinatra::Base
  enable :sessions
  set :views, Proc.new { File.join(root, "views") }

  cpu = CPU.new

  get '/' do
    erb :index
  end

  get '/game' do
    redirect '/'
  end

  post '/game' do
    if params[:Choice]
      @p2_choice = cpu.choice
      erb :result
    else
      session[:Name] = params[:Name] if params[:Name]
      erb :game
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
