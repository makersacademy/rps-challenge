require 'player'

describe Player do
  let(:vin_diesel_name) { 'Vin Diesel' }
  subject { described_class.new(vin_diesel_name) }

  it 'has a name' do
    expect(subject.name).to eq vin_diesel_name
  end

  describe '#computer?' do
    it 'returns false' do
      expect(subject.computer?).to be false
    end
  end
end
