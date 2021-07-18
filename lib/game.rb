class Game
  attr_reader :player_name, :player_choice, :computer_choice

  def self.instance
    @game ||= Game.new
  end

  def start(name)
    @player_name = name
  end

  def RPS_sample
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def result_check(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
    if player_choice == computer_choice
      '/draw'
    elsif player_choice == 'Rock' && computer_choice == 'Paper' ||
      player_choice == 'Paper' && computer_choice == 'Scissors' ||
      player_choice == 'Scissors' && computer_choice == 'Rock'
      '/lose'
    else
      '/win'
    end
  end
end
