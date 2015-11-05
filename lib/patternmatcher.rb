class PatternMatcher
  def initialize(sequence)
    @pattern = pattern
  end
  def self.run(sequence)
    PatternMatcher.new(sequence).run
  end
  def run
  end
end

  def repeated_sequence(sequence)
    i = 1
    while i < sequence.length
      pattern = sequence.take(i)
      sequence.each_with_index{|element, index|
        if element != pattern[index % i]
          break
        end
        return pattern[(index + 1) % i] if index == sequence.length-1
      }
    i += 1
    end
    nil
  end

=begin
  nil if nil or length less than two
  iterate over the list
  save the first element as the pattern
  if the next element is the same, assume continuation of the pattern
  if not, save the next element and reiterate with the next pattern
=end