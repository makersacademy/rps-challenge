class Game
attr_reader :player, :weapon_selected, :computer_weapon

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

def result_text
  grammar
  return "#{@weapon_selected} #{@beat} #{@computer_weapon}...  you win!" if result == :win
  return "We both chose #{@weapon_selected}...  it's a draw!" if result == :draw
  return "#{@computer_weapon} #{beat} #{@weapon_selected}...  you lose!" if result == :lose
  raise error
end

def result
  return :draw if draw?
  return :win if player_wins?
  :lose
end

private

attr_reader :beat

def player_wins_with_rock?
  return true if @weapon_selected == 'Rock' && @computer_weapon == 'Scissors'
end

def player_wins_with_paper?
  return true if @weapon_selected == 'Paper' && @computer_weapon == 'Rock'
end

def player_wins_with_scissors?
  return true if @weapon_selected == 'Scissors' && @computer_weapon == 'Paper'
end

def player_wins?
  return true if player_wins_with_rock?
  return true if player_wins_with_paper?
  return true if player_wins_with_scissors?
  false
end

def grammar
  @weapon_selected == 'Scissors' ? @beat = ' beat ' : @beat = ' beats '
end

end
