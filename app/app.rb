require "sinatra/base"
require "capybara"
require './lib/rps'

class RPS_app < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/data' do
    params[:name].length < 1 ?
    (session[:name] = "anonymous") : (session[:name] = params[:name])
    session[:choice] = params[:choice]
    choice = session[:choice]
    RPS::WEAPONS.include?(choice.to_sym) ?
    (redirect '/result') : (redirect '/onejob')

  end

  get '/onejob' do
    @player = Player.new(session[:name], session[:choice])
    erb :onejob
  end

  get '/result' do
    @player = Player.new(session[:name], session[:choice])
    @game = RPS.new(@player)
    erb :result
  end

end
