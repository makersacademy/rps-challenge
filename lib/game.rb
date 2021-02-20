class Game
  attr_reader :players, :player_1, :player_2, :winner

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end
  def player_2
    @players.last
  end

  def selection(player, value)
    player.set_choice(value)
  end

  def random_selection(player)
    player.set_choice(['Rock', 'Paper', 'Scissors', 'Rock', 'Paper', 'Scissors'].sample)
  end

  def results(player_1, player_2)
    @winner = player_1 if player_1.choice == 'Rock' && player_2.choice == 'Scissors'
    @winner = player_1 if player_1.choice == 'Scissors' && player_2.choice == 'Paper'
    @winner = player_1 if player_1.choice == 'Paper' && player_2.choice == 'Rock'
    @winner = player_2
  end

end
