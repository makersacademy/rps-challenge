class Game
  RPS_MOVES = ['rock', 'paper', 'scissors']
  WIN_MATRIX = { 'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper' }

  attr_reader :round_number, :player_1_name, :player_2_name, :round_result, :two_players, :victory, :victory_2
  attr_accessor :player_1_move, :player_2_move

  def initialize
    @moves = RPS_MOVES
    @round_number = 1
  end

  def number_players(number)
    return @two_players = true if number == "Two Players"

    @two_players = false
  end

  def setup(player_1_name, player_2_name)
    @player_1_name = player_1_name
    @player_2_name = player_2_name
    create_game_score
  end

  def play_round
    @player_2_move = computer_move unless two_players
    winner = win_lose(@player_1_move, @player_2_move)
    @victory = winner
    update_scores(winner)
    @round_result = win_lose_message(@player_1_move, @player_2_move)
  end

  def reset_round
    @player_1_move = nil
    @player_2_move = nil
    @round_result = nil
    @round_number += 1
  end

  def display_score
    @game_score
  end

  def victory_message
    if @game_score[@player_1_name] == @game_score[@player_2_name]
      @victory_2 = 'Draw'
      'It was a draw!'
    elsif @game_score[@player_1_name] > @game_score[@player_2_name]
      @victory_2 = @player_1_name
      "#{@player_1_name} defeated #{@player_2_name}"
    else
      @victory_2 = @player_2_name
      "#{@player_2_name} defeated #{@player_1_name}"
    end
  end

  private

  def computer_move
    number = rand 0..2
    @moves[number]
  end

  def win_lose(player_1_move, player_2_move)
    if player_1_move == player_2_move
      'Draws'
    elsif WIN_MATRIX[player_1_move] == player_2_move
      @player_1_name
    else
      @player_2_name
    end
  end

  def win_lose_message(player_1_move, player_2_move)
    if player_1_move == player_2_move
      'Its a DRAW...fight again!'
    elsif WIN_MATRIX[player_1_move] == player_2_move
      return "You WIN!!" unless @two_players

      "#{player_1_name} is the WINNER!"
    else
      return "You LOSE...:(" unless @two_players

      "#{player_2_name} is the WINNER!"
    end
  end

  def create_game_score
    @game_score = {
      @player_1_name => 0,
      "Draws" => 0,
      @player_2_name => 0,
    }
  end

  def update_scores(winner)
    @game_score[winner] += 1
  end
end

# test_game = Game.new
# test_game.number_players('Two Players')
# test_game.setup('Jack', 'Pam')
# test_game.player_1_move = 'scissors'
# test_game.player_2_move = 'rock'
# test_game.play_round
# puts test_game.display_score
#
# 10.times {
# puts test.computer_move
# }
# # puts
# # puts "break"
# # puts
# # srand 0
# # 10.times {
# # puts test.computer_move
# # }
