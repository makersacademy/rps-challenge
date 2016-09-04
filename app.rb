require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/ai.rb'
require_relative 'lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @player = Player.instance
    @opponent = Ai.instance
    @game = Game.instance
  end

  get '/' do
    erb(:start)
  end

  post '/player_name' do
    # $player = Player.new(params[:player_name])
    @player = Player.create(params[:player_name])
    puts params
    puts @player
    redirect '/pick_opponent'
  end

  get '/pick_opponent' do
    # @player = $player
    erb(:pick_opponent)
  end

  get '/pick_opponent/:opponent_number' do |opponent_number|
    @opponent_number = opponent_number.to_i
    puts @opponent_number

    if @opponent_number == 1 #jet lee
      @opponent = Ai.create(60,90,60)
      @opponent.set_name("Jet Lee")
    elsif @opponent_number == 2 #Geologist
      @opponent = Ai.create(90,60,60)
      @opponent.set_name("Dr Bob")
    elsif @opponent_number == 3 #Sergey Smith
      @opponent = Ai.create(60,60,90)
      @opponent.set_name("Sergey")
    elsif @opponent_number == 4 #Nash
      @opponent = Ai.create(75,75,75)
      @opponent.set_name("John Nash")
    elsif @opponent_number == 5 #Crazy sam
      @opponent = Ai.create(rand(51..99),rand(51..99),rand(51..99))
      @opponent.set_name("Crazy Sam")
    else
      raise "Unknown opponent number"
    end

    redirect '/pick_match_length'
  end

  get '/pick_match_length' do
    erb(:pick_match_length)
  end

  post '/play' do
    # @match_length = params[:match_length].to_i
    @game = Game.create(@player, @opponent, params[:match_length].to_i)
    redirect '/play'
  end

  get '/play' do
    user_move = params[:user_move].to_i

    puts "Match Length: " + @game.length.to_s
    puts @opponent.name
    # puts @opponent.rock_value
    # puts @opponent.paper_value
    # puts @opponent.scissors_value
      puts user_move

      if user_move != nil
        opponent_move = @opponent.pick_move
        result = @game.play(user_move, opponent_move)

        if result == 1 #player wins

        elsif result == 2 #opponent wins

        elsif result == 0 #it's a tie

        else
          raise "ERROR"
        end
      end


    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
