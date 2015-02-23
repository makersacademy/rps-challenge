class Game

  attr_reader   :players, :player_one, :player_two

  def initialize
    @players = []
  end

  def add(player)
    raise "Sorry, you can't have more than two players" if players.count == 2

    @player_one = player if players.count == 0
    @player_two = player if players.count == 1 && players
    players << player
  end

  def winner
    if player_one.shape == :rock && player_two.shape == :scissors
      @winner = player_one
    elsif player_two.shape == :rock && player_one.shape == :scissors
      @winner = player_two
    elsif player_one.shape == :scissors && player_two.shape == :paper
      @winner = player_one
    elsif player_two.shape == :scissors && player_one.shape == :paper
      @winner = player_two
    elsif player_one.shape == :rock && player_two.shape == :paper
      @winner = player_two
    elsif player_two.shape == :rock && player_one.shape == :paper
      @winner = player_one
    else
      @winner = :tie
    end
    
    # Alternative logic - in progress

    # players.each do |player|
    #   # opponent = players.reject { player == player }.
    #   array_without_player = players
    #   array_without_player.delete player
    #   opponent = array_without_player.first
    #   puts opponent

    #   if player.shape == :rock && opponent.shape == :scissors
    #     @winner = player.flatten
    #   end
    # end

  end

end

