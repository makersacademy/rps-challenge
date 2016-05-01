require 'attack'

describe Attack do
  subject(:rock) { described_class.new(name, weakness) }
  let(:name) { double(:rock) }
  let(:weakness) { double(:paper) }

  describe '#weakness' do
    it 'returns a string for the correct weakness' do
      expect(rock.weakness).to eq weakness
    end
  end

  describe '#name' do
    it 'returns a string of the name of the attack' do
      expect(rock.name).to eq name
    end
  end

end