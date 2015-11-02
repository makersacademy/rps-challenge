require 'sinatra/base'

require './lib/weapon'
require './lib/computer'
require './lib/rules'

class RPSWeb < Sinatra::Base

  include Rules

  attr_reader :player_name, :weapon

  enable :sessions

  get '/' do
    session[:tie] = 0
    session[:player_score]   = 0
    session[:computer_score] = 0
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb(:game)
  end

  get '/rock' do
    session[:weapon] = "rock"
    redirect '/result'
  end

  get '/scissors' do
    session[:weapon] = "scissors"
    redirect '/result'
  end

  get '/paper' do
    session[:weapon] = "paper"
    redirect '/result'
  end

  get '/result' do
    @weapon = session[:weapon]
    @player_weapon   = Weapon.new(@weapon)
    @player_image = Rules::IMAGES[@player_weapon.type]
    @player_name = session[:player_name]

    @computer_weapon = Computer.weapon
    @computer_image = Rules::IMAGES[@computer_weapon]

    @tie = session[:tie]
    @player_score = session[:player_score]
    @computer_score = session[:computer_score]

    if @player_weapon.type == @computer_weapon
      @tie += 1
      @result = "a tie"
    else
      if @player_weapon.beats?(@computer_weapon)
        @player_score += 1
        @result = "won"
      else
        @computer_score += 1
        @result = "lost"
      end
    end

    session[:tie] = @tie
    session[:player_score] = @player_score
    session[:computer_score] = @computer_score
    
    erb(:result)

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
