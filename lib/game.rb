class Game

  def self.create(player)
    @game = Game.new
    @player = player
  end

  def self.instance
    @game
  end

  def self.player
    @player
  end

  def self.random_move
    @game_choice = self.moves.sample
  end

  def self.compare(user_choice)
    if game_choice == user_choice
      @state = :draw
    elsif @moves.index(user_choice) - 1 == @moves.index(game_choice)
      @state = :player_wins
    elsif @moves.index(game_choice) - 1 == @moves.index(user_choice)
      @state = :game_wins
    else # the case where user_choice and @game_choice are the first and last of @moves
      @moves = @moves[1..-1].push(@moves.first)
      self.compare(user_choice)
    end
  end

  def self.state
    @state
  end

  def self.game_choice
    @game_choice
  end

  def self.weapon
    self.player.choice if @state == :player_wins
    self.game_choice if @state == :game_wins
  end

  private

  def self.moves
    @moves = [:rock, :paper, :scissors]
  end

end
