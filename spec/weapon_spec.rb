require 'weapon'

describe Weapon do

  # Other mocks
  let(:some_name) { double(:some_name) }

  # Weapons
  let(:subject) { described_class.new(some_name) }
  
  describe '#initialize' do
    it 'has a name' do
      expect(subject.name).to eq some_name
    end
  end
end
