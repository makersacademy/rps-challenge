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









  # def play
  #   @players.each{ |p| p.hand = rand @hands.length }
  # end

  # def get_hand
  #   rand @hands.length
  # end

  # def player_wins?(player)
  #   @players.reject { |plyer| plyer == player }
  #     .select { |opponent| @results_matrix[opponent.hand].include? player.hand }
  #     .length > 0
  # end

  # def winner
  #   return @players[1] if RULES[@players[1].hand].include? @players[0].hand
  #   @players[0]
  # end

# RULES = {
#     scissors: [:paper, :lizard],
#     paper: [:rock, :Spock],
#     rock: [:scissors, :lizzard],
#     lizzard: [:paper, :Spock],
#     Spock: [:scissors, :rock]
#   }
#
# HANDS = [:scissors, :paper, :rock, :lizzard, :Spock]
# # HANDS = [1,2,3,4,5]


    # x.map { |y| ((x.length - 1)/2).times.map { |index| ((y + index * 2) % x.length) + 1 } }

    # 1 = 2       4
    #     # n + 1   n + 3
    #
    # 2 = 3       5
    #     # n + 1   n + 3
    #
    # 3 = 4       1
    #     # n + 1   n - 2
    #
    # 4 = 5       2
    #     # n + 1   n - 2
    #
    # 5 = 1       3
    #     # n - 1   n + 3

    #
    #
    # '''
    #         rock  paper scissors  Spock Lizzard
    # rock                    x              x
    # paper     x                     x
    # scissors        x                      x
    # Spock     x             x
    # lizzard         x               x
    #
    #
    # scissors  1
    # paper     2
    # rock      3
    # lizzard   4
    # spock     5
    #
    # {
    #   scissors: [:paper, :lizard],
    #   paper: [:rock, :Spock],
    #   rock: [:scissors, :lizzard],
    #   lizzard: [:paper, :Spock]
    # }
    #
    # scissors
    # paper     2
    # rock      3
    # lizzard   4
    # spock     5
    #
    # '''
    #
    # x.map { |y| ((x.length - 1)/2).times.map { |index| ((y + index * 2) % x.length) + 1 } }
