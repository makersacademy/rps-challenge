require "sinatra/base"
require "./randomchoice.rb"

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/entered' do
    session[:name] = params[:name]
    erb :entered
  end

  post '/response' do
    erb :chosen
    session[:chosen] = params[:chosen]
    @computer = RandomChoice.new
    erb :chosen
    end
end
