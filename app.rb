require 'sinatra/base'
require_relative './lib/choice_manager.rb'
require_relative './lib/player.rb'
require_relative './lib/machine.rb'
require_relative './lib/interpreter.rb'

class RPS < Sinatra::Base

  before do
    @choice_manager = ChoiceManager.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    ChoiceManager.setup(Player.new(params[:name]),Machine.new)
    redirect '/play' 
  end

  get '/play' do
    @name = @choice_manager.player.name
    erb(:play)
  end

  post '/play' do
    @choice_manager.set_choices(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @player_choice = @choice_manager.player.choice
    @computer_choice = @choice_manager.machine.choice
    @result_message = @choice_manager.result
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
