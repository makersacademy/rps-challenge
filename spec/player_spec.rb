require "spec_helper"

describe Player do

  subject(:named) { described_class.new("test") }

  describe '#initialize' do
    it 'allows player to save name' do
      # named = described_class.new("test")
      expect(named.name).to eq("test")
    end
  end
end
