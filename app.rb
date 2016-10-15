require './lib/player'
require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
	
	before do
		@game = Game.instance
	end

  get '/' do
  	erb :index
  end

  get '/details' do
  	erb :details
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/play'
  end

  post '/choice' do
    @game.move(params[:choice])
    redirect '/outcome'
  end

  get '/outcome' do
    erb :outcome
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0

end


