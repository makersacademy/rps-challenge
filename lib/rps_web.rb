require 'sinatra/base'
require_relative 'game'

class RPS < Sinatra::Base

	set :views, proc { File.join(root, '..', 'views') }
  set :public, proc { File.join(root, '..', 'public') }

  get '/' do
    erb :index
  end

  # post '/' do
  # 	@name = params[:name]
  # 	erb :index
  # end

  get '/gameplay' do
  	erb :gameplay
  end

  post '/gameplay' do
  	$g = Game.new
  	@name = params[:name]
  	erb :gameplay 
  end

  get '/rock' do
  	@computer_choice = $g.computer_choice
  	erb :rock
  end

   get '/paper' do
  	@computer_choice = $g.computer_choice
  	erb :paper
  end

   get '/scissors' do
  	@computer_choice = $g.computer_choice
  	erb :scissors
  end






  # start the server if ruby file executed directly
  run! if app_file == $0
end
