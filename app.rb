require 'sinatra'
require './lib/game_controller'
require './lib/game_logic'

class RPSLS < Sinatra::Base

  before do
    @controller = GameController.return_instance
  end

  get '/' do
    erb(:index)
  end

  post '/' do
    player_name = params[:player_name]
    game_logic = GameLogic.new
    GameController.create_instance(player_name,game_logic)
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/select' do
    @controller.choose_player_num(params[:number].to_i)
    puts 'im here'
    redirect('/')
  end

  post '/outcome' do
    @controller.play
    redirect('/outcome')
  end

  get '/outcome' do
    erb(:outcome)
  end

  run! if app_file == $0

end
