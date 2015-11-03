class FrequencyAnalyzer
  HANDS = [:paper, :rock, :scissors]

  def self.run(history = [])
    FrequencyAnalyzer.new(history).run
  end

  def initialize(history = [])
    @history = history
  end

  def run
    return nil if @history.empty? or mode_frequency(@history) < 0.5
    stat_mode(@history)
  end

private

  def mode_frequency(history)
    hash_of_frequencies(history).max.first / history.length.to_f
  end

  def stat_mode(history)
    hash_of_frequencies(history).max.last
  end

  def hash_of_frequencies(history)
    (Array.new << occurence_of_each_hand(history) << HANDS).transpose.to_h
  end

  def occurence_of_each_hand(history)
    hand_count = []
    HANDS.each {|hand| hand_count << history.count(hand)}
    hand_count
  end

end