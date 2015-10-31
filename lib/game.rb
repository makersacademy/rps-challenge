class Game

  attr_reader :player, :cpu_player, :current_player
 
  PLAY_OPTIONS = ['Rock', 'Paper', 'Scissors']

  def initialize player,cpu_player
    @players = [player,cpu_player]
    @current_player = player
  end

  def player
    @players.first
  end

  def cpu_player
    @players.last
  end

  def rock
    @current_player.rock
  end

  def paper
    @current_player.paper
  end

  def scissors
    @current_player.scissors
  end

  def random_choice
    choice = PLAY_OPTIONS.sample
    case 
      when choice == 'Rock'
        rock
      when choice == 'Paper'
        paper
      when choice == 'Scissors'
        scissors
    end    
  end

  def switch_turns
    @current_player = opponent(@current_player)
  end

  def opponent(current_player)
    @players.select {|player| player != current_player}.first
  end

end