require 'sinatra/base'
require './lib/player'
require './lib/game'


class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:name1])
    player2 = Player.new(params[:name2])
    @game = Game.create player1, player2
    redirect '/player1_choose'
  end

  before do
    @game = Game.instance
  end

  get '/player1_choose' do
    erb :player1_choose
  end

  post '/player1_decision' do
    @game.player1.save_choice params[:choice1]
    @game.player2.name == "Computer" ? (redirect '/man_vs_machine') : (redirect '/player2_choose')
  end

  get '/player2_choose' do
    erb :player2_choose
  end

  post '/man_vs_man' do
    man_vs = @game.player1.choice
    man = @game.player2.save_choice params[:choice2]
    @game.choices man_vs, man
    redirect '/result'
  end


  get '/man_vs_machine' do
    man_vs = @game.player1.choice
    machine = @game.player2.save_choice
    @game.choices man_vs, machine
    redirect '/result'
  end

  get '/result' do
    @game.result
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
