class Game

  attr_reader :player, :pc_weapon, :player_weapon

  def initialize(player)
    @player = player
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

  def pc_weapon
    @pc_weapon = ['rock','paper','scissors'].sample
  end

  def player_win?
    case @player_weapon
    when 'rock'
      rock_win?
    when 'paper'
      paper_win?
    when 'scissors'
      scissor_win?
    else
      return nil
    end
  end

  private

  def rock_win?
    return true if pc_weapon == 'scissors'
    return false if pc_weapon == 'paper'
  end

  def paper_win?
    return true if pc_weapon == 'rock'
    return false if pc_weapon == 'scissors'
  end

  def scissor_win?
    return true if pc_weapon == 'paper'
    return false if pc_weapon == 'rock'
  end

end
