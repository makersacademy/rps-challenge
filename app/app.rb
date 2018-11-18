require "sinatra/base"
require "capybara"
require './lib/rps'

class RPS_app < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/data' do
    session[:name] = params[:name]
    session[:choice] = params[:choice]
    choice = session[:choice]
    RPS::WEAPONS.include?(choice.to_sym) ? (redirect '/result') : (redirect '/onejob')

  end

  get '/onejob' do
    name = session[:name]
    choice = session[:choice]
    @player = Player.new(name, choice)
    erb :onejob
  end

  get '/result' do
    name = session[:name]
    choice = session[:choice]
    @player = Player.new(name, choice)
    @game = RPS.new(@player)
    erb :result
  end

end
