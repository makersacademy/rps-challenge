require "spec_helper"

describe Player do

  subject(:named) { described_class.new("test") }

  describe '#initialize' do
    it 'allows player to save name' do
      expect(named.name).to eq("test")
    end
  end

  describe '#weapon' do
    it 'allows player to save weapon' do
      subject.weapon_choice('rock')
      expect(subject.weapon).to eq('rock')
    end
  end
end
