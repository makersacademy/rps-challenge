require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions, :static

  set :views, proc { File.join(root, '..', 'views') }
  set :public_folder, Proc.new { File.join(root, '..', 'public') }

  get '/' do
    if (params[:name] == '' || params[:name] == nil)
      erb :index
    else
      session[:name] = params[:name]
      redirect "/RPS"
    end
  end

  get '/RPS' do
    erb :RPS
  end

  post '/RPS' do
    session[:choice] = params[:choice]
    @choice = session[:choice]
    rps = RPS.new
    @result = rps.play @choice
    erb :RPS
  end

  run! if app_file == $0
  
end
