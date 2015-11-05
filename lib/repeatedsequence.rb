class RepeatedSequence

  def self.run(sequence)
    RepeatedSequence.new(sequence).run
  end

  def initialize(sequence)
    @sequence = sequence
  end

  def run
    repeated_sequence(@sequence)
  end

private

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
end