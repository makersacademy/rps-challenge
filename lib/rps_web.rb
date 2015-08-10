require 'sinatra/base'
require_relative 'game'

class RPS < Sinatra::Base

	set :views, proc { File.join(root, '..', 'views') }
  set :public, proc { File.join(root, '..', 'public') }

  get '/' do
  	$g = Game.new
  	$p1 = 0
  	$p2 = 0 
  	$best_of = 1
    erb :index
  end

  get '/gameplay' do
  	erb :gameplay
  end

  post '/gameplay' do
  	$name = params[:name]
  	$best_of = params[:best_of]
  	erb :gameplay 
  end

  #This is not DRY - not happy with this section.
  get '/rock' do
  	@computer_choice = $g.computer_choice
  	@result = $g.play(:rock, @computer_choice)
  	if @result == "Player 1 Wins"
  		$p1 += 1
  	elsif @result == "Player 2 Wins"
  		$p2 += 1
  	end

  	redirect '/result' if $p1 > (($best_of.to_i) * 0.5) || $p2 > (($best_of.to_i) * 0.5)
  	erb :rock
  end

  get '/paper' do
  	@computer_choice = $g.computer_choice
  	@result = $g.play(:paper, @computer_choice)
  	if @result == "Player 1 Wins"
  		$p1 += 1
  	elsif @result == "Player 2 Wins"
  		$p2 += 1
  	end

  	redirect '/result' if $p1 > (($best_of.to_i) * 0.5) || $p2 > (($best_of.to_i) * 0.5)
  end

  get '/scissors' do
  	@computer_choice = $g.computer_choice
  	@result = $g.play(:scissors, @computer_choice)
  	if @result == "Player 1 Wins"
  		$p1 += 1
  	elsif @result == "Player 2 Wins"
  		$p2 += 1
  	end

  	redirect '/result' if $p1 > (($best_of.to_i) * 0.5) || $p2 > (($best_of.to_i) * 0.5)
  	erb :scissors
  end

	get '/result' do
	  erb :result
	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
