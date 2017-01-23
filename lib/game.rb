class Game

  attr_reader :playing, :turn, :players, :winner

  WINNING_COMBO = {"Rock"=>"Scissors", "Paper"=>"Rock", "Scissors"=>"Paper"}
  DEFAULT_POINTS = 1
  DEFAULT_WINNING_POINTS = 10

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1, player2)
    @players = [player1, player2]
    @playing = player2.name == "Computer" ? 1 : 2
    @weapon = ""
    @turn = 0
    @winner = ""
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def player_name
    @players[turn].name
  end

  def opponent_name
    @players[turn-1].name
  end

  def fight_with(weapon1)
    one_player? ? fight_one_player(weapon1) : fight_two_player(weapon1)
  end

  private

  attr_accessor :turn

  def one_player?
    @playing == 1
  end

  def fight_one_player(weapon1)
    weapon2 = select_weapon
    check_winner(weapon1, weapon2)
  end

  def check_winner(weapon1, weapon2)
    winner = select_winner(weapon1, weapon2)
    update_score(winner)
    output(weapon1, weapon2, winner)
  end

  def fight_two_player(weapon1)
    return player1_turn(weapon1) if @turn == 0
    player2_turn(weapon1)
  end

  def player1_turn(weapon1)
    @turn = 1
    @weapon = weapon1
    ""
  end

  def player2_turn(weapon1)
    @turn = 0
    check_winner(@weapon, weapon1)
  end

  def select_weapon
    ["Rock", "Paper", "Scissors"].sample
  end

  def select_winner(player1_weapon, player2_weapon)
    return 0 if WINNING_COMBO[player1_weapon] == player2_weapon
    return 1 if WINNING_COMBO[player2_weapon] == player1_weapon
    2
  end

  def update_score(winner)
    return if winner == 2
    @players[winner].add_score(DEFAULT_POINTS)
    @winner = @players[winner].name if has_won?(winner)
  end

  def output(weapon1, weapon2, winner)
    output = "#{weapon1} vs #{weapon2} - "
    return output += "Game is a draw!" if winner == 2
    output += "#{@players[winner].name} wins the match"
  end

  def has_won?(winner)
    @players[winner].score >= DEFAULT_WINNING_POINTS
  end
end
