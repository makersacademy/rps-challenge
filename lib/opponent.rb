class Opponent

  HANDS = [:paper, :rock, :scissors]
  RELATIONSHIPS = {
    paper: :rock,
    rock: :scissors,
    scissors: :paper
  }

  def self.choose_hand(history = [], frequency_analyzer_klass = FrequencyAnalyzer, pattern_matcher_klass = PatternMatcher)
    Opponent.new(history, frequency_analyzer_klass).choose_hand
  end

  def initialize(history = [], frequency_analyzer_klass = FrequencyAnalyzer, pattern_matcher_klass = PatternMatcher)
    @history = history
    @frequency_analyzer_klass = frequency_analyzer_klass
    @pattern_matcher_klass = pattern_matcher_klass
  end

  def choose_hand
    recommend_hand(run_pattern_matcher) or recommend_hand(run_frequency_analyzer) or random_hand
  end

private

  def random_hand
    HANDS[rand(3)]
  end

  def recommend_hand(hand)
    return nil if hand.nil?
    RELATIONSHIPS.find {|attack, wins_against| wins_against == hand}.first
  end

  def run_frequency_analyzer
    @frequency_analyzer_klass.run(@history)
  end

  def run_pattern_matcher
    @pattern_matcher_klass.run(@history)
  end


end