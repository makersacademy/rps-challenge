require 'entry'

describe Entry do

  subject(:entry) { described_class.new }
  let(:key1) { double :key }
  let(:first_entry) { double :player }

  describe '#initialize' do
    it '0.0. initialises with an empty hash' do
      expect(entry.list).to eq({})
    end
  end

  describe '#add_entry' do
    it '1.0. adds a player to the list' do
      entry.add_entry(key1, first_entry)
      expect(entry.list).to eq({key1 => first_entry})
    end
  end
end
