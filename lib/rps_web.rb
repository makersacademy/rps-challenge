require 'sinatra/base'
require_relative 'game'

class RPS < Sinatra::Base

	set :views, proc { File.join(root, '..', 'views') }
  set :public, proc { File.join(root, '..', 'public') }

  get '/' do
    erb :index
  end

  get '/gameplay' do
  	erb :gameplay
  end

  post '/gameplay' do
  	$g = Game.new
  	$name = params[:name]
  	erb :gameplay 
  end

  #This is not DRY - must be a better way!
  get '/rock' do
  	@computer_choice = $g.computer_choice
  	@result = $g.play(:rock, @computer_choice)
  	erb :rock
  end

   get '/paper' do
  	@computer_choice = $g.computer_choice
  	@result = $g.play(:paper, @computer_choice)
  	erb :paper
  end

   get '/scissors' do
  	@computer_choice = $g.computer_choice
  	@result = $g.play(:scissors, @computer_choice)
  	erb :scissors
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
