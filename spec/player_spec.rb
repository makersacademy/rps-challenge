require 'spec_helper'

describe Player do
  subject(:josh) { described_class.new("Josh") }
  subject(:computer) { described_class.new }

  describe '#name' do
    it 'defaults to computer' do
      expect(computer.name).to eq("Computer")
    end

    it 'returns the players name' do
      expect(josh.name).to eq("Josh")
    end
  end

end