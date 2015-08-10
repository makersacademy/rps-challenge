require 'sinatra/base'
require_relative 'game'

class Rpschallenge < Sinatra::Base
  
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

    get '/' do
      erb :index
    end

    post '/' do
      if params[:Opponents] == 'Human'
        redirect '/available_games'
      else
        redirect '/choose'
      end
    end

    get '/available_games' do
      erb :available_games
    end

    post '/available_games' do
      p params[:game]
      if params[:game] == 'New Game'
        redirect '/new_game'
      else
        redirect '/available_games'
      end
    end 

    get '/new_game' do
      erb :new_game
    end

    post '/new_game' do
      @session = session['session_id']
      @name = params[:name]
      new_game(@name, @session)
      redirect '/waiting_page'
    end

    get '/waiting_page' do
      p "HEEELELLLLOOOOO!!!!"
      p Game.existing_games_getter
      erb :waiting_page
    end


    get '/choose' do
      erb :choose
    end

    post '/choose' do
      p session["session_id"]
      @name=params[:name]
      new_game(@name, session["session_id"])
      erb :choose
    end

    post '/throw' do
      $game.available_weapons.each { |x| @throw = x if x.name == params[:Weapons] }
      $game.moves[$player_1] = @throw
      $game.computer_throw $player_2
      $winner = $score.rank($game.moves)
      $winner == 'Draw' ? $result = 'Draw' : $result = $winner.name 
      p $result
      erb :result
    end

    def new_game name, session
        $name = name
        $game = Game.new
        Game.existing_games_setter $game
        $score = Score_Calculator.new
        $game.gamers << session
        $rock = Weapon.new
        $rock.name = 'Rock'
        $paper = Weapon.new
        $paper.name = 'Paper'
        $scissors = Weapon.new
        $scissors.name = 'Scissors'
        $spock = Weapon.new
        $spock.name = 'Spock'
        $lizard = Weapon.new
        $lizard.name = 'Lizard'
        $rock.is_superior_to $scissors
        $rock.is_superior_to $lizard
        $paper.is_superior_to $rock
        $paper.is_superior_to $spock
        $scissors.is_superior_to $paper
        $scissors.is_superior_to $lizard
        $spock.is_superior_to $rock
        $spock.is_superior_to $scissors
        $lizard.is_superior_to $spock
        $lizard.is_superior_to $paper
    end

    # start the server if ruby file executed directly
    run! if app_file == $0
end


