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
      return true if pc_weapon == 'scissors'
      return false if pc_weapon == 'paper'
    when 'paper'
      return true if pc_weapon == 'rock'
      return false if pc_weapon == 'scissors'
    when 'scissors'
      return true if pc_weapon == 'paper'
      return false if pc_weapon == 'rock'
    else
      return nil
    end
  end




end
