require_relative 'player'

class Game
  attr_reader :players, :result

  def initialize(player1, player2)
    @rps = ['Rock', 'Paper', 'Scissors']
    @players = [player1, player2]
    @result = nil
    @winning_combos = { 'Rock' => 'Scissors', 'Scissors' => 'Paper', 'Paper' => 'Rock' }
  end

  def results
    @result = calculate_result
    record_result
  end

  def calculate_result
    return nil if no_choice?
    return 'Draw!' if draw?
    win? ? "#{players[0].name} Wins!" : "#{players[1].name} Wins!"
  end

  def record_result
    return if @result == 'Draw!'
    @result == "#{players[0].name} Wins!" ? players[0].record_win : players[1].record_win
  end

  def choices
    [players[0].choice, players[1].choice]
  end

  def set_choices(choice1, choice2 = computer_choice)
    players[0].record_choice(choice1)
    players[1].record_choice(choice2)
  end

  def computer_choice
    @rps[rand(3)]
  end

  def game_won?
    players[0].winner? || players[1].winner?
  end

  def self.create_game(player1, player2 = Player.new('Computer'))
    @game = Game.new(player1, player2)
  end

  def self.show_game
    @game
  end

  private
  attr_reader :winning_combos

  def win?
    winning_combos[players[0].choice] == players[1].choice
  end

  def draw?
    players[0].choice == players[1].choice
  end

  def no_choice?
    players[0].choice.nil? || players[1].choice.nil?
  end

end
