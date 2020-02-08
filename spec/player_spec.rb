require 'spec_helper'

describe Player do
  subject(:jason) { described_class.new("Jason") }
  describe "#name" do
    it 'returns the name of the player' do
      expect(jason.name).to eq "Jason"
    end
  end
end
