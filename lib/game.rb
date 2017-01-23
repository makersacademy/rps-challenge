class Game
  @game = nil

  def initialize(player1)
    @players = [player1]
  end

  def self.instance #attr reader for game class instance variable- cant use attr_reader
    @game
  end

  def self.create(player1)
    @game = Game.new(player1)
  end

  def player1
    @players[0]
  end

  def computer_choice
    @computer_choice = ["Rock", "Paper", "Scissors"].sample
  end

  def reset
    @choice = nil
    @computer_choice = nil
  end

  def result(choice)
    if choice == @computer_choice
      "Draw!"
    elsif choice == 'Rock' && @computer_choice == 'Paper'
      "You lose computer chose #{@computer_choice}"
    elsif choice == 'Paper' && @computer_choice == 'Scissors'
      "You lose computer chose #{@computer_choice}"
    elsif choice == 'Scissors' && @computer_choice == 'Rock'
      "You lose computer chose #{@computer_choice}"
    else
      "You win! Congratulations!"
    end
  end
  #
  # def paper_result
  #   if @choice == 'Rock'
  #     "You win! Computer chose Rock"
  #   elsif @choice == 'Paper'
  #     "Draw!"
  #   else
  #     "You lose! Computer chose Scissors"
  #   end
  # end
  #
  # def scissors_result
  #   if @choice == 'Rock'
  #     "You lose! Computer chose Rock"
  #   elsif @choice == 'Paper'
  #     "You win!Computer chose Paper"
  #   else
  #     "Draw!"
  #   end
  # end
end
