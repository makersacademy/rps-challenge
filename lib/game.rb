require_relative "./player.rb"
class Game
OPTIONS_ARR = ["rock", "paper", "scissors"]
WIN_ARR = [["rock", "scissors"], ["paper", "rock"], ["scissors", "paper"]]

attr_reader :p1_choice, :p2_choice, :turn, :players, :players_names

  def initialize(player1, player2=nil)
    # @game = Game.new(player1, player2)
    @player1 = player1
    if player2.nil?
      @player2 = Computer.new
    else
      @player2 = player2
    end
    @players = [@player1, @player2]
    @players_names = [@player1.name, @player2.name]
    @turn = @player1
  end


  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  # private

  def player_1_turn
    @turn = @player1
  end

  def player_2_turn
    @turn = @player2
  end

  def multiplayer?
    if @player2.name != "Computer"
      true
    else
      false
    end
  end

  def reset_player_1_turn
    @turn = @player1
  end


end
