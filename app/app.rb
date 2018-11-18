require "sinatra/base"
require "capybara"

class RPS_app < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/data' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    erb :game
  end

  post '/choice' do
    # @match = RPS.new(session[:name])
    # session[:rock] = params[:rock]
    redirect '/result'
  end

  get '/result' do
    @user_choice = session[:rock]
    erb :result
  end

end
