require 'patternmatcher'
describe PatternMatcher do
  context "When passed a pattern:" do

    it "PM recognises a unary pattern" do
      unary = [:a, :a, :a, :a, :a]
      expect(described_class.run(unary)).to eq :a
    end

    it "PM reconises a simple binary pattern" do
      binary = [:a, :b, :a, :b, :a]
      expect(described_class.run(binary)).to eq :b
    end

    it "PM can also handle compound binary patterns" do
      compound_binary = [:a, :a, :b, :a, :a, :b, :a, :a]
      expect(described_class.run(compound_binary)).to eq :b
    end

    it "PM can work with ternary patterns" do
      ternary = [:a, :b, :c, :a, :b]
      expect(described_class.run(ternary)).to eq :c
    end

    it "PM can do compound ternary patterns" do
      compound_ternary = [:a, :a, :a, :b, :b, :c, :a, :a, :a, :b, :b]
      expect(described_class.run(compound_ternary)).to eq :c
    end

    xit "PM can do symmetric patterns" do
      symmetric = [:a, :b, :c, :d, :d, :c, :b]
      expect(described_class.run(symmetric)).to eq :a
    end

  end
end