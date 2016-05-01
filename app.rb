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
    player1 = Player.new(params[:name1])
    params[:name2] == 'machine' ? player2 = Machine.new : player2 = Player.new(params[:name2])
    ChoiceManager.setup(player1,player2)
    redirect '/play' 
  end

  get '/play' do
    redirect('/result') if @choice_manager.finished?
    @name1 = @choice_manager.player1.name
    @name2 = @choice_manager.player2.name
    erb(:play)
  end

  post '/play' do
    @choice_manager.set_choice(params[:choice])
    if @choice_manager.opponent.is_a?(Machine)
      @choice_manager.set_random_choice
    else
      @choice_manager.swap_players
    end
    redirect '/play'
  end

  get '/result' do
    @choices = [@choice_manager.player1.choice, @choice_manager.player2.choice]
    @names = [@choice_manager.player1.name, @choice_manager.player2.name]
    @result_message = @choice_manager.result
    erb(:result)
  end

  post '/reset' do
    @choice_manager.clear
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
