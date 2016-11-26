class Game

@game = nil

HAND_STRENGTHS = {rock:{rock:0,paper:-1,scissors:1},
paper:{rock:1,paper:0,scissors:-1},scissors:{rock:-1,paper:1,scissors:0}}

HANDS = ["rock","paper","scissors"]

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
    p opponent_hand = @chose_hand.to_sym
    p player_hand = @player.choice.to_sym
    compare_hands(player_hand,opponent_hand)
  end

  private

  def compare_hands(player_hand,oppopent_hand)
    # p HAND_STRENGTHS[player_hand][oppopent_hand]
    return @winner = "Computer Wins" if HAND_STRENGTHS[player_hand][oppopent_hand] > 0
    return @winner = "Draw!" if HAND_STRENGTHS[player_hand][oppopent_hand] == 0
    return @winner = "Player Wins" if HAND_STRENGTHS[player_hand][oppopent_hand] < 0
  end


end
