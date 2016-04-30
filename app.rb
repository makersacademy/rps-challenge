require 'sinatra/base'
require_relative './lib/choice_manager.rb'

class RPS < Sinatra::Base

  before do
  	@choice_manager = ChoiceManager.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
  	ChoiceManager.setup(Player.new(params[:name]))
  	redirect '/play' 
  end

  get '/play' do
  	@name = @choice_manager.player.name
	erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
