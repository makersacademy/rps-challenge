class Game

  attr_reader :weapon_matrix

  def self.create(players:, weapons:)
    @the_game = Game.new(players: players, weapons: weapons)
  end

  def self.instance
    @the_game
  end

  def initialize(players:, weapons:)
    @players = players
    @first_player = @players[0]
    @weapon_matrix = get_weapons_matrix(weapons)
  end

  def get_weapons_matrix(weapons)
    Hash[weapons.each_with_index.map { |weapon, i| [weapon, weapon_defeats(weapons, i)]}]
  end

  def weapon_defeats(weapons, i)
    ((weapons.length - 1)/2).times.map { |z| weapons[((i + (1 + z * 2)) % weapons.length )] }
  end

  def add_weapons(weapon_1:, weapon_2:)
    @weapon_matrix = get_weapons_matrix(weapons_list.concat([weapon_1, weapon_2]))
  end

  def players
    @players
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def weapons_list
    @weapon_matrix.keys
  end

  def round_complete?
    @players[1] == @first_player
  end

  def rotate
    @players.rotate!
  end

  def winner
    return nil if player_1.weapon == player_2.weapon
    if @weapon_matrix[player_1.weapon].include? player_2.weapon
      player_1
    else
      player_2
    end
  end
  
end
