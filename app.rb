require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/decide-winner' do
    @game = Game.instance
    @game.player_picks(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    @game_choice = ['Rock', 'Paper', 'Scissors'].sample
    @game_decision = {
      'Rock' => { 'Scissors' => 'Winner', 'Paper' => 'Loser' },
      'Scissors' => { 'Paper' => 'Winner', 'Rock' => 'Loser' },
      'Paper' => { 'Rock' => 'Winner', 'Scissors' => 'Loser' }
      }
    if @game.player_choice == @game_choice
      @winner = 'Draw'
    else
      @winner = @game_decision[@game.player_choice][@game_choice]
    end
    erb(:result)
  end

  run! if app_file == $0
end
