class Opponent

  HANDS = [:paper, :rock, :scissors]
  RELATIONSHIPS = {
    paper: {beats: :rock, loses_to: :scissors},
    rock: {beats: :scissors, loses_to: :paper},
    scissors: {beats: :paper, loses_to: :rock}
  }

  def self.choose_hand(history = [])
    Opponent.new(history).choose_hand
  end

  def initialize(history = [])
    @history = history
  end

  def choose_hand
    # pattern?
    return recommend_hand(favoured_hand?.last) if favoured_hand?.first >= 0.5
    random_hand
  end

  def random_hand
    HANDS[rand(3)]
  end

  def favoured_hand?
    occurence_of_each_hand
    hash_of_frequencies.max
  end

  def occurence_of_each_hand
    @hand_count = []
    HANDS.each {|hand| @hand_count << @history.count(hand)}
    p @hand_count
  end

  def calculate_frequency
    p @hand_count.map{|count| (count / @history.length.to_f).round(3) }
  end

  def hash_of_frequencies
    (Array.new << calculate_frequency << HANDS).transpose.to_h
  end

  def recommend_hand(hand)
    RELATIONSHIPS[hand][:loses_to]
    # RELATIONSHIPS.select{|key, lookups|
    #   lookups == {beats: hand} }.to_a.flatten.first
  end

end