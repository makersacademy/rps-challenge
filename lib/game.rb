class Game

  attr_reader :first_player, :second_player, :name, :turn

  def initialize
    @beats = {
      'rock' => ['paper'],
      'paper' => ['scissors'],
      'scissors' => ['rock']
    }
  end

  def add_player(player)
    raise("There's already two players in the game!") if two_players
    @first_player ? @second_player = player : @first_player = player
  end

  def winner
    return "Draw! Try again" if @first_player.pick == @second_player.pick
    return @first_player.name "a winner is you" if @beats[@second_player.pick].include? @first_player.pick
    return @second_player.name "a winner is you" if @beats[@first_player.pick].include? @second_player.pick
  end

  def two_players
    !@second_player.nil?
  end

end