require 'sinatra/base'
require_relative './lib/player'

class RPS < Sinatra::Base
  enable :sessions # for session variables



  get '/' do
    erb(:homescreen_names)
  end

  post '/submit_names' do
    session[:player] = Player.new(params[:name])
    redirect('/greet_and_choose')
  end

  get '/greet_and_choose' do
    erb(:greet_and_choose)
  end


  # before block below will execute before each route above, saving from defining @player multiple times
  before do
    @player = session[:player]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
