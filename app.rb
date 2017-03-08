require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/start' do
    user1, user2 = Player.new(params[:username_1]), Player.new(params[:username_2])
    if user2.name != '' && user2.name != 'Optional'
      @game = Game.create(user1, user2)
      redirect '/welcome'
    else
      @game = Game.create(user1)
      redirect '/single_player'
    end
  end

  before do
    @game = Game.instance
  end

  get '/welcome' do
    erb :welcome
  end

  get '/single_player' do
    erb :single_player
  end

  post '/single_player_choice' do
    $computer_weapon = @game.player2.select_random_weapon
    @game.play(params[:weapon], $computer_weapon)
    redirect '/single_player_result'
  end

  get '/single_player_result' do
    erb :single_player_results
  end

  get '/first_player' do
    erb :first_player
  end

  post '/first_player_choice' do
    session[:weapon] = params[:weapon]
    redirect '/second_player'
  end

  get '/second_player' do
    erb :second_player
  end

  post '/second_player_choice' do
    @game.play(session[:weapon], params[:weapon])
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


# .sample https://github.com/makersacademy/course/blob/master/intro_to_the_web/sinatra_erb.md

# render 'if' statement: https://github.com/makersacademy/course/blob/master/intro_to_the_web/sinatra_using_forms.md
