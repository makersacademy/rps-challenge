require 'sinatra/base'
require 'game'
# require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:name] = params[:name]
    redirect '/play'
  end

  get "/play" do
    @game = Game.new
    @welcome_message = "Welcome, #{session[:name]}!"
    def choice_message
      return ''  if session[:choice].nil?
      "You selected #{session[:choice]}, your opponent selected paper."
    end
    erb :play
  end

  post "/choice" do
    session[:choice] = params[:choice]
    erb :choice
  end



end
