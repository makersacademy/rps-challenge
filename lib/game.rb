class Game


  def initialize(player, computer)
    @players = [player, computer]
  end

  def player1
    @players.first
  end

  def computer
    @players.last
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.load_instance
    @game
  end

  def player_wins
    if rock?(player1) && scissors?(computer) ; true
    elsif scissors?(player1) && paper?(computer) ; true
    elsif paper?(player1) && rock?(computer) ; true
    else ; false
    end
  end

  private

  def rock?(player)
    player.current_choice == 'rock'
  end

  def scissors?(player)
    player.current_choice == 'scissors'
  end

  def paper?(player)
    player.current_choice == 'paper'
  end

end
