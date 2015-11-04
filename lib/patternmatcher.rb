class PatternMatcher
  def initialize(pattern)
    @pattern = pattern
  end
  def self.run(pattern)
    PatternMatcher.new(pattern).run
  end
  def run
  end
end