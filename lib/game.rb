class Game

  attr_reader :active_player
  attr_reader :player_1
  attr_reader :player_2

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @player_1 = player_1
    @player_2 = player_2
    @players_array = [@player_1, @player_2]
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def first_turn(active_player = nil)
    if active_player.nil?
      @active_player = @players_array.sample
    else
      @active_player = active_player
    end
  end

  def switch_turn
    if @active_player == @player_1
      @active_player = @player_2
    else
      @active_player = @player_1
    end
  end

  def all_players_selected_choice?
    @player_1.choice != nil && @player_2.choice != nil
  end
end
