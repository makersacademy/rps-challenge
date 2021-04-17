require 'sinatra'
require 'sinatra/reloader'


class Rps < Sinatra::Application
  before { @game = Game.load_game }
  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.save_game(Player.new(params[:player]), Player.new('Computer'))
    redirect('/welcome')
  end

  get '/welcome' do
    @player_name = @game.players[0].name
    erb(:welcome)
  end

  post '/choice' do
    "you chose #{params[:choice]}"
  end
  
  run! if app_file == $PROGRAM_NAME
end  
