class Game

  attr_reader :player_one_name, :player_two_name, :player_one_choice, :mode

  def initialize(player_one_name, mode, player_two_name = 'Computer')
    @player_one_name = player_one_name
    @player_two_name = player_two_name
    @mode = mode
  end

  def self.create(player_one_name, player_two_name = 'Computer')
    @games = Game.new(player_one_name, player_two_name)
  end

  def self.instances
    @games
  end

  def show_result(printer = Printer)
    printer.new.print_result(result, player_one_name, player_two_name)
  end

  def make_choice(choice)
    @player_one_choice = choice
  end

  def result
    find_outcome[computer_choice.to_sym]
  end

  private

  def find_outcome
    return rock if player_one_choice == 'Rock'
    return paper if player_one_choice == 'Paper'
    return scissors if player_one_choice == 'Scissors'
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
    options = ['Rock', 'Paper', 'Scissors']
    options[rand(0..2)]
  end
end
