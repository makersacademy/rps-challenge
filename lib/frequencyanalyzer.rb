class FrequencyAnalyzer
  HANDS = [:paper, :rock, :scissors]
  RELATIONSHIPS = {
    paper: {beats: :rock, loses_to: :scissors},
    rock: {beats: :scissors, loses_to: :paper},
    scissors: {beats: :paper, loses_to: :rock}
  }

  def self.run(history = [])
    FrequencyAnalyzer.new(history).run
  end

  def initialize(history = [])
    @history.last = history
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


history1 = [:paper, :paper, :paper, :paper, :paper, :paper, :rock, :scissors]
history2 = [:paper, :paper, :paper, :rock, :rock, :rock, :scissors, :scissors, :scissors]
history3 = [:]
FrequencyAnalyzer.run(history)

  # def favoured_hand?
  #   occurence_of_each_hand
  #   p hash_of_frequencies.max
  # end

  # def occurence_of_each_hand
  #   @hand_count = []
  #   HANDS.each {|hand| @hand_count << @history.count(hand)}
  #   p @hand_count
  # end

  # def calculate_frequency
  #   p @hand_count.map{|count| (count / @history.length.to_f).round(3) }
  # end

  # def hash_of_frequencies
  #   (Array.new << calculate_frequency << HANDS).transpose.to_h
  # end