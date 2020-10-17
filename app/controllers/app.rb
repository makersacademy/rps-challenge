require 'sinatra'
require './app/models/logic.rb'

class RPSGame < Sinatra::Base
  set :views, File.expand_path('../../views',__FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)
  set :root, File.dirname(__FILE__)
  enable :sessions
  set :session_secret, ENV["SESSION_SECRET"]


  get '/' do
    # session[:logic] = Game.new
    erb :index
  end
end
