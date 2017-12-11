require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @take_turn = Taketurn.new(session)
    erb(:play)
  end

  post '/play' do
    session[:player_option] = params[:option]
    session[:computer_option] = Computer.new.option
    redirect '/play'
  end

  run! if app_file == $0
end

# get '/' do
#   @player = Player.new(params[:name])
#   @compuer = Computer.new
#   $game = Game.new(@player, @computer)
#   erb(:home)
# end
