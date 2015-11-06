  class PatternMatcher

  def self.run(sequence)
    PatternMatcher.new.run(sequence.last(15))
  end

  def run(sequence)
    return nil if sequence.nil? or sequence.empty?
    repeated_sequence(sequence)
  end

private

  def repeated_sequence(sequence)
    i = 1
    while i < sequence.length
      pattern = sequence.take(i)
      sequence.each_with_index do |element, index|
        break if break_in_pattern?(element, pattern, index, i)
        return next_element(pattern, index, i) if end_of_sequence?(sequence, index)
      end
    i += 1
    end
    repeated_sequence(all_but_first(sequence)) if sequence.length >= 3
    nil
  end

  def break_in_pattern?(element, pattern, index, i)
    element != pattern[index % i]
  end

  def end_of_sequence?(sequence, index)
    index == sequence.length - 1
  end

  def next_element(pattern, index, i)
    pattern[(index + 1) % i]
  end

  def all_but_first(pattern)
    pattern.last(pattern.length - 1)
  end

end