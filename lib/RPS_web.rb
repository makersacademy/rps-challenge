require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
enable :sessions
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    if (params[:name] == '' || params[:name] == nil)
      erb :index
    else
      session[:name] = params[:name]
      redirect "/RPS"
    end
  end

  get '/RPS' do
    session[:choice] = params[:choice]
    erb :RPS
  end

  post '/RPS' do
    @choice = session[:choice]
    rps = RPS.new
    @user_choice = rps.user_choice @choice
    @computer_choice = rps.computer_choice
    @result = rps.play @user_choice, @computer_choice
    erb :RPS
  end

  run! if app_file == $0
end
