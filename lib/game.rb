class Game

  attr_reader :player, :player_weapon, :pc_weapon

  def initialize(player)
    @player = player
    @pc_weapon = random_weapon
    @result = result
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def set_player_weapon(weapon)
    @player_weapon = weapon.to_sym
  end

  def result
    case player_win?
    when true
      "#{@player.name} wins this game"
    when false
      "Computer wins this game"
    when nil
      "It's a draw"
    end
  end

  private

  def player_win?
    case @player_weapon
    when :rock
      rock_win?
    when :paper
      paper_win?
    when :scissors
      scissors_win?
    when @pc_weapon
      nil
    end
  end

  def random_weapon
    @pc_weapon = [:rock, :paper, :scissors].sample
  end

  def rock_win?
    return true if @pc_weapon == :scissors
    return false if @pc_weapon == :paper
  end

  def paper_win?
    return true if @pc_weapon == :rock
    return false if @pc_weapon == :scissors
  end

  def scissors_win?
    return true if @pc_weapon == :paper
    return false if @pc_weapon == :rock
  end

end
