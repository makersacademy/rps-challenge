class Game
  attr_reader :players, :winner, :player1, :player2, :referee

  def initialize(players = [], referee_class = Referee)
    @players = players
    @referee_class = referee_class
  end

  def add_player(player)
    if players.size.zero?
      add_player1(player)
    elsif players.size == 1
      add_player2(player)
    else
    end
  end

  def chose(player, choice)
    player.make_decision(choice)
  end

  def complete
    assign_referee
    @winner = @referee.declare_winner
  end

  def self.instance
    @game
  end

  def self.create
    @game = Game.new
  end

  private

  def add_player1(player1)
    @player1 = player1
    players << @player1 if players.size < 1
  end

  def add_player2(player2)
    @player2 = player2
    players << @player2 if players.size == 1
  end

  def assign_referee
    @referee = @referee_class.new(player1, player2)
  end

end
