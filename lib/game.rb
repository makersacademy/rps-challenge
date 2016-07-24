class Game
attr_reader :player, :weapon_selected, :select_weapons, :computer_weapon, :result_text, :beat

def self.instance
  @game
end

def self.create(player)
  @game = Game.new(player)
end

def initialize(player)
  @player = player
end

def select_weapon(weapon)
  @weapon_selected = weapon.capitalize
end

def select_computer_weapon
  @computer_weapon = %w(Rock Paper Scissors).sample
end

def select_weapons(weapon)
  select_weapon(weapon)
  select_computer_weapon
end

def draw?
  @weapon_selected == @computer_weapon
end

def player_wins?
  case @weapon_selected
    when 'Rock'
      return true if @computer_weapon == 'Scissors'
    when 'Paper'
      return true if @computer_weapon == 'Rock'
    when 'Scissors'
      return true if @computer_weapon == 'Paper'
    else
      false
  end
end

def result
  return :draw if draw?
  return :win if player_wins?
  :lose
end

def result_text
  grammar
  return "#{@weapon_selected} #{@beat} #{@computer_weapon}... You Win!" if result == :win
  return "We both chose #{@weapon_selected}... It's a Draw!" if result == :draw
  return "#{@computer_weapon} #{beat} #{@weapon_selected}... I win!" if result == :lose
  raise error
end

def grammar
  @weapon_selected == 'Scissors' ? @beat = ' beat ' : @beat = ' beats '
end

end
