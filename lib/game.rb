require_relative 'player.rb'

class Game

  attr_reader :gamemode, :waiting_player, :current_player, :players

  def initialize(gamemode)
    @gamemode = gamemode
    @players = []
  end

  def evaluate
    @gamemode == 'ai' ? evaluate_ai : evaluate_multi
  end

  def evaluate_multi
    return nil if @current_player.hand == nil
    @players.all? { |item| item.hand != nil } ? compare_hands : switch 
  end

  def evaluate_ai
    ai_hand(@players[1])
    compare_hands
  end

  def compare_hands
    logic(@current_player.hand, @waiting_player.hand)
  end
  
  def logic(h, h2)
    if h == 'Rock' && h2 == 'Scissors'
      log_game
      @current_player.add_victory
    elsif h == 'Paper' && h2 == 'Scissors'
      log_game
      @waiting_player.add_victory
    elsif h == 'Scissors' && h2 == 'Paper'
      log_game
      @current_player.add_victory
    elsif h == 'Scissors' && h2 == 'Rock'
      log_game
      @waiting_player.add_victory
    elsif h == 'Rock' && h2 == 'Paper'
      log_game
      @waiting_player.add_victory
    elsif h == 'Paper' && h2 == 'Rock'
      log_game
      @current_player.add_victory 
    end
    reset if @gamemode == 'multiplayer'
  end

  def reset
    @players.each {|p| p.reset }
    switch
  end

  def log_game
    @current_player.add_played
    @waiting_player.add_played
  end

  def create_player(name)
    name != nil ? @players.push(Player.new(name)) : @players.push(Player.new("AI"))
    @current_player = @players[0]
    @waiting_player = @players[1]
  end

  def switch
    hold = @current_player
    @current_player = @waiting_player
    @waiting_player = hold
  end

  def self.create(gamemode)
    @game = Game.new(gamemode)
  end
    
  def self.instance
    @game
  end

  def ai_hand(ai)
    ai.receive_hand(random)
  end

  def random
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
