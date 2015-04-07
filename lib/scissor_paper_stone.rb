require 'sinatra/base'

class ScissorPaperStone < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  
  GAME = Game.new

  get '/' do
    erb :index
  end

  get '/new_game' do
    @name = params[:name]
    erb :new_game
  end

  get '/start_game' do
    @name = params[:name]
    if @name == ""
      redirect '/new_game'
    end
    erb :start_game
  end

  post '/start_game' do
    player1 = Player.new(params[:name])
    player2 = Computer.new
    GAME.add_player player1
    GAME.add_player player2
    player1.choose(params[:choice])
    @result = GAME.play
    request.POST.inspect
    # puts @result
    erb :start_game
  end

  run! if app_file == $0
end