require_relative "./player.rb"
require_relative "./computer.rb"

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

  def players_turn
    if player_1_turn == @player1 && multiplayer?
      player_2_turn
    else
      reset_player_1_turn
    end
  end

  def player1_move(move)
    @p1_choice = @player1.player_move(move)
  end

  def player2_move(move=nil)
    if @player2.name == "Computer"
      @p2_choice = @player2.computer_move_do
    else
      @p2_choice = @player2.player_move(move)
    end
  end

  def result
    if @p1_choice == @p2_choice
      return :draw
    elsif WIN_ARR.include?([@p1_choice, @p2_choice])
      return :win
    else
      return :lose
    end
  end

  def next_play
    if player_2_turn == @player2
      return '/play'
    else
      '/endgame'
    end
  end

  def result
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
