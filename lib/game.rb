class Game

  attr_reader :player_1, :player_2, :active_player, :result

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
    @active_player = @player_1
  end

  def current_move(move)
    @active_player.move(move)
  end

  def switch_turn
    @active_player == @player_1 ? (@active_player = @player_2) : (@active_player = @player_1)
  end

  def win_paper
    if @player_1.attack == "rock"
      @result = "#{self.player_2} Wins"
    else
      @result = "#{self.player_1} Wins"
    end
  end

  def win_rock
    if @player_1.attack == "scissor"
      @result = "#{self.player_2} Wins"
    else
      @result = "#{self.player_1} Wins"
    end
  end

  def win_scissor
    if @player_1.attack == "paper"
      @result = "#{self.player_2} Wins"
    else
      @result = "#{self.player_1} Wins"
    end
  end

  def draw
    @result = "Draw" if @player_1.attack == @player_2.attack 
  end

end
