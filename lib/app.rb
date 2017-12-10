require "sinatra/base"
require_relative "rps_logic"
require_relative "ruby_file_2"

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:home)
  end

  post '/' do
    session[:name] = params[:PlayerName]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  post '/play' do
    session[:choice] = params[:choice]
    redirect '/botsturn'
  end

  get '/botsturn' do
    rps = Rps_Logic.new(session[:choice])
    @choice = session[:choice]
    @bot_choice = rps.bot_choice
    @name = session[:name]
    erb(:botsturn)
  end

  run! if app_file == $0

end
