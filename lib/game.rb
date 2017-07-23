class Game
  CHOICES = [:rock, :paper, :scissors]
  attr_reader :human_player, :computer_player, :last_winner

  def self.create(human_player, computer_player)
    @current = Game.new(human_player, computer_player)
  end

  def initialize(human_player, computer_player)
    @human_player = human_player
    @computer_player = computer_player
  end

  def self.current
    @current
  end

  def play(human_choice, computer_choice)
    p human_choice
    p computer_choice
#    last_winner = result(human_choice, computer_choice)
    update_last_winner(result(human_choice, computer_choice))
  end

  private

  def update_last_winner(player)
    @last_winner = player
  end

  def result(human_choice, computer_choice)
    return 0 if human_choice == computer_choice
    if human_choice == loses_to(computer_choice)
      Game.current.computer_player.update_score
      computer_player
    else
      Game.current.human_player.update_score
      human_player
    end
  end

  def loses_to(choice)
    CHOICES[index_of(choice) - 1]
  end

  def index_of(choice)
    CHOICES.find_index(choice)
  end

end
