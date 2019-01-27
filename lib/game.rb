class Game

  attr_reader :player1, :player2, :player1_choice, :player2_choice, :mode

  def initialize(player1, mode, player2 = 'Computer')
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @mode = mode
  end

  def self.create(player1, mode, player2 = 'Computer')
    @game = Game.new(player1, mode, player2)
  end

  def game_over
    mode == 'one_player' ? !player1_choice.nil? : !player2_choice.nil?
  end

  def self.instances
    @game
  end

  def show_result(printer = Printer)
    printer.new.print_result(result, player1, player2)
  end

  def make_choice(choice)
    turn == player1 ? @player1_choice = choice : @player2_choice = choice
    switch_turns
  end

  def turn
    @players[0]
  end

  def not_turn
    @players[1]
  end

  def result
    @player2_choice = computer_choice if mode == 'one_player'
    find_outcome[player2_choice.to_sym]
  end

  private

  def switch_turns
    @players.rotate!
  end

  def find_outcome
    return rock if player1_choice == 'Rock'
    return paper if player1_choice == 'Paper'
    return scissors if player1_choice == 'Scissors'
  end

  def rock
    { Rock: 'Draw',
    Paper: 'Loose',
    Scissors: 'Win' }
  end

  def paper
    { Rock: 'Draw',
    Paper: 'Loose',
    Scissors: 'Win' }
  end

  def scissors
    { Rock: 'Draw',
    Paper: 'Loose',
    Scissors: 'Win' }
  end

  def computer_choice
    ['Rock', 'Paper', 'Scissors'][rand(0..2)]
  end
end
