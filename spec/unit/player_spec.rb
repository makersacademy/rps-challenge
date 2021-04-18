require 'player'

describe Player do
  let(:subject) { described_class.new('Jason') }

  it { is_expected.to respond_to :name }
  it { is_expected.to respond_to :weapon }
  it { is_expected.to respond_to :points }

  describe "#name" do
    context 'once initialized' do
      it 'returns the name of the player' do
        expect(subject.name).to eq 'Jason'
      end
    end
  end

  describe "#weapon" do
    context 'once initialized' do
      it 'returns the name of the weapon' do
        subject.weapon = 'Rock'
        expect(subject.weapon).to eq 'Rock'
      end
    end
  end

  describe '#points' do
    it 'has a default value of 0' do
      expect(subject.points).to eq Player::POINTS
    end
  end
end
