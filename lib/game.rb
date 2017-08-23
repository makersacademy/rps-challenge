class Game
  attr_reader :player, :player2

  def initialize(player)
    @player = player
  end

  def add_player(player)
    @player2 = player
  end

  def outcome
    return "#{@player.name} wins!" if @player.choice == what_wins_vs_this(@player2.choice)
    return "#{@player2.name} wins!" if @player2.choice == what_wins_vs_this(@player.choice)
    return "It's a draw!"
  end

  def what_wins_vs_this(choice)
    return "Paper" if choice == "Rock"
    return "Scissors" if choice == "Paper"
    return "Rock" if choice == "Scissors"
  end

end
