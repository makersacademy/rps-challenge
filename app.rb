require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
	enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
  	$player = Player.new(params[:player_name])
  	redirect to('/rock-paper-scissors')
  end

  get '/rock-paper-scissors' do
  	@player_name = $player.name
  	erb(:rock_paper_scissors)
  end
end
