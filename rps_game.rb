require 'sinatra/base'
require 'shotgun'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class RPS < Sinatra::Base

    enable :sessions

    before do
      @game = Game.instance
    end

    get '/' do
      erb(:index)
    end

    post '/name' do
      @game = Game.create(Player.new(params[:name_box]),Computer.new)
      puts params
      redirect '/play_screen'
    end

    get '/play_screen' do
      @name = session[:name]
      erb(:play_screen)
    end

    post '/attack' do
      @game.player.assign_move(params[:weapon])
      @game.computer.assign_move
      redirect '/result'
    end


     get '/result' do
      @something = @game.round_winner?
       erb(:attack)
     end


    post '/turn_over' do
      erb(:play_screen)
    end


  end
