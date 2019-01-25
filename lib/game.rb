class Game

  attr_reader :player_name, :player_choice, :printer

  def initialize(player_name, printer = Printer)
    @player_name = player_name
    @printer = printer.new(player_name)
  end

  def self.create(player_name)
    @games = Game.new(player_name)
  end

  def self.instances
    @games
  end

  def show_result
    printer.print_result(result)
  end

  def make_choice(choice)
    @player_choice = choice
  end

  def result
    find_outcome[computer_choice.to_sym]
  end

  private

  def find_outcome
    return rock if player_choice == 'Rock'
    return paper if player_choice == 'Paper'
    return scissors if player_choice == 'Scissors'
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
