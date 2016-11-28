class Game

@game = nil

HAND_STRENGTHS = {
  rock:{rock:0,paper:-1,scissors:1,lizard:1,spock:-1},
  paper:{rock:1,paper:0,scissors:-1,lizard:-1,spock:1},
scissors:{rock:-1,paper:1,scissors:0,lizard:1,spock:-1},
lizard:{rock:-1,paper:1,scissors:-1,lizard:0,spock:1},
spock:{rock:1,paper:-1,scissors:1,lizard:-1,spock:0}}

HANDS = [:rock,:paper,:scissors,:lizard,:spock]

attr_reader :player,:choose_hand,:chose_hand,:winner

  def initialize(player)
    @player = player
    @hands = HANDS
    @chose_hand = nil
    @winner = nil
  end

  def self.new_game(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def choose_hand
    @chose_hand = HANDS.sample
  end

  def hand_winner
    opponent_hand = @chose_hand.to_sym
    player_hand = @player.choice.to_sym
    compare_hands(player_hand,opponent_hand)
  end

  def clear
    @chose_hand = nil
    @winner = nil
    @player.choice = nil
  end

  private

  def compare_hands(player_hand,oppopent_hand)
    return @winner = "You Loose!" if HAND_STRENGTHS[player_hand][oppopent_hand] > 0
    return @winner = "Draw!" if HAND_STRENGTHS[player_hand][oppopent_hand] == 0
    return @winner = "You Win!" if HAND_STRENGTHS[player_hand][oppopent_hand] < 0
  end


end
