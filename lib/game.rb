class Game

  attr_reader :player, :player_weapon, :player_win, :pc_weapon

  def initialize(player)
    @player = player
    @pc_weapon = set_pc_weapon
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def set_player_weapon(weapon)
    @player_weapon = weapon
  end

  def set_pc_weapon
    @pc_weapon = ['rock', 'paper', 'scissors'].sample
  end

  def player_win?
    nil if @player_weapon == @pc_weapon
    if @player_weapon =='rock'
      rock_win?
    elsif @player_weapon == 'paper'
      paper_win?
    elsif @player_weapon == 'scissors'
      scissors_win?
    end
  end

  private

  def rock_win?
    return true if @pc_weapon == 'scissors'
    return false if @pc_weapon == 'paper'
  end

  def paper_win?
    return true if @pc_weapon == 'rock'
    return false if @pc_weapon == 'scissors'
  end

  def scissors_win?
    return true if @pc_weapon == 'paper'
    return false if @pc_weapon == 'rock'
  end

end
