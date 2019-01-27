class Game

  attr_reader :player1, :player2, :player1_choice, :player2_choice, :mode

  def initialize(player1, mode, player2 = 'Computer')
    @player1 = player1
    @player2 = player2
    @player2_choice = computer_choice
    @players = [player1, player2]
    @mode = mode
  end

  def self.create(player1, mode, player2 = 'Computer')
    @game = Game.new(player1, mode, player2)
  end

  def self.instances
    @game
  end

  def game_over
    mode == 'one_player' ? turn != player1 : turn != player2
  end

  def show_result(printer = Printer, result = Result)
    outcome = result.new.calculate(player1_choice, player2_choice)
    printer.new.print_result(outcome, player1, player2)
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

  private

  def switch_turns
    @players.rotate!
  end

  def computer_choice
    ['Rock', 'Paper', 'Scissors'][rand(0..2)]
  end
end
